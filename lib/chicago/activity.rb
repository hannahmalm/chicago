class Chicago::Activity 
    attr_accessor :name, :category, :url, :activity_information
    @@all = []

    def initialize(name, category)
        @name = name
        @url = url 
        @activity_information = []
        save 
    end 

    def self.all 
        @@all
    end 

    def add_to_category
        #add the activity to the correct category unless it already incudes itself
        @category.activities << self unless @categories.activities.include?(self)
    end 

    def get_activity_details
        Chicago::Scraper.scrape_activity_information(self) if @activity_information.empty?
    end 

    def save 
        @@all << self
    end 


end   