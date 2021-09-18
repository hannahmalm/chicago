class Chicago::Activity 
    attr_accessor :name, :category, :url, :activity_information
    #create an empty array for holding the chicago activities
    #an event belongs to a category
    @@all = ["event1" , "even2", "event3"]

    def initialize(name, category)
        @name = name
        @url = url 
        @activity_information = []
        save 
    end 

    def self.all 
        @@all
    end 

    # def add_to_category
    #     #add the activity to the correct category unless it already incudes itself
    #     @category.activities << self unless @categories.activities.include?(self)
    # end 

    # def get_activity_details
    #     Chicago::Scraper.scrape_activity(self) if @activity_information.empty?
    # end 

    def save 
        @@all << self
    end 


end   