class Team

	attr_reader :name, :motto

	@@all = []

	def initialize(name, motto)
		@name = name
		@motto = motto
		@@all << self
	end

	def self.all
		@@all
	end

	def members
		Hero.all.select { |hero| hero.team == self }
	end

end