class Chicago::Category 
    attr_accessor :category_name 
    #a category has many events
    @@all = []

    #initialize the category name
    def initialize(category_name)
        @category_name = category_name
        save
    end 

    #Navigate to the scraper category method and run that if the @@all array is empty
    def self.all
        Chicago::Scraper.scrape_category if @@all.empty?
        @@all  
    end

    def save
        @@all << self 
    end
end 