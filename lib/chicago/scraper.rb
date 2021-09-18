class Chicago::Scraper 
    def self.scrape_category
        doc = Nokogiri::HTML(open("https://www.choosechicago.com/things-to-do/find-things-to-do/"))
        category = doc.css(".card-subtitle")
    
      category.each do |c|
        category_name =  c.text
        Chicago::Category.new(category_name)
      end 
    end 

    # scrape the activity for the selected category
    # def self.scrape_activity(category)
    #     doc = Nokogiri::HTML(open(""))
    #     activities = doc.css("")
    #         title = 
    #         url = 
    #         Chicago::Activities.new(title, category, url)
    #     end 
    # end

    # def self.activity_details(activity)

    # end 
end 
end 