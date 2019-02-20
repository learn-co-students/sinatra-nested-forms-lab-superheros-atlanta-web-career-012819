class Hero

	attr_reader :name, :power, :bio, :team

	@@all = []

	def initialize(name, power, bio, team)
		@name = name
		@power = power
		@bio = bio
		@team = team
		@@all << self
	end

	def self.all
		@@all
	end

end