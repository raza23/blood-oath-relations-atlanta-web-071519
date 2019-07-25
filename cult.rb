require 'pry'

class Cult
    attr_accessor :name, :location, :founding_year,:slogan,:follower,:population
    @@all = []

    def initialize(name,location,founding_year,slogan,follower,population)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan    
        @follower = follower
        @population = population
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        x = self.all.detect {|cult| cult.name == name}
        x
        end
        
    def self.find_by_location(location)
        
        
        x = self.all.collect {|cult| cult.location == location}
        binding.pry
        end

        def self.find_by_year(founding_year)
        
        x = self.all.detect {|cult| cult.founding_year == founding_year}
            
        end
    

end
    




#  jags = Cult.new('jags','jacksonville',1996,'duuval',110,200)
#  shrimp = Cult.new('shrimp','jacksonville',1996,'duuval',110,200)
# # heat = Cult.new('heat','mia',1996,'305',1100,2000)
# # #p Cult.all
# # #p Cult.find_by_name('heat')
# p Cult.find_by_location('jacksonville')
# # p Cult.find_by_year(1996)

