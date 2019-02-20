require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(params["team"]["name"], params["team"]["motto"] )
      @super_heroes = []
      @super_heroes << SuperHero.new(params["member1_name"], params["member1_power"], params["member1_bio"], @team)
      @super_heroes << SuperHero.new(params["member2_name"], params["member2_power"], params["member2_bio"], @team)
      @super_heroes << SuperHero.new(params["member3_name"], params["member3_power"], params["member3_bio"], @team)
      
      erb :teams
    end
end
