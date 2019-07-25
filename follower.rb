class Follower
    @@all = []
    attr_accessor :name,:age,:life_motto,:cults=[]
    
    def initialize(name,age,life_motto,cults,join_cult)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = cults
        @@all << self
    end


    def self.all
        @@all
    end

    def self.find_age(age)
        
        x = self.all.detect {|f| f.age == age}
            
        end



