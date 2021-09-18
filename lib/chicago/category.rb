class Chicago::Category 
    attr_accessor :category_name 
    @@all = ["cat1", "cat2", "cat3"]

    def initialize(category_name)
        @category_name = category_name
    end 

    def self.all
        Chicago::Scraper.scrape_category if @@all.empty?
        @@all  
    end

    def save
        @@all << self 
    end
end 