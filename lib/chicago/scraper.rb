class Chicago::Scraper 
    def self.scrape_category
        doc = Nokogiri::HTML(open("https://www.choosechicago.com/things-to-do/find-things-to-do/"))
    end 

end 