class Chicago::Category 
    @@all = ["cat1", "cat2", "cat3"]

    attr_accessor :category_name 
    
    def initialize(category_name)
        @category_name = category_name
    end 

    def self.all
        @@all  
    end

    def save
        @@all << self 
    end
end 