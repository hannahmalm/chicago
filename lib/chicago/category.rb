class Chicago::Category 
     #a category has many events
    attr_accessor :category_name, :ref, :activities
   
    @@all = []

    #initialize the category name
    def initialize(category_name, ref)
        @category_name = category_name
        @ref = ref 
        @activites = []
        save
    end 

    #Navigate to the scraper category method and run that if the @@all array is empty
    def self.all
        Chicago::Scraper.scrape_category if @@all.empty?
        @@all  
    end

    #if the activies array is empty, scrape activities within self(the given category )
    def get_activites
        Chicago::Scraper.scrape_activities(self) if @activities.empty?
    end

    def save
        @@all << self 
    end
end 