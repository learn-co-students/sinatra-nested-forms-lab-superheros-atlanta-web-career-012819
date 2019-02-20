require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    	erb :index
    end

    post '/teams' do
    	team_name = params["team"]["name"]
    	team_motto = params["team"]["motto"]
    	@team = Team.new(team_name, team_motto)
    	(1..3).each_with_index do |i|
    		name = params["member#{i}_name"]
    		power = params["member#{i}_power"]
    		bio = params["member#{i}_bio"]
    		Hero.new(name, power, bio, @team)
    	end
    	erb :teams
    end


end
