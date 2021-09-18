class Chicago::Scraper 
    def self.scrape_category
        doc = Nokogiri::HTML(open("https://www.choosechicago.com/things-to-do/find-things-to-do/"))
        category = doc.css(class=card-subtitle)

      category.each do |c|
        category_name =  c.text
        Chicago::Scraper.new(category_name)
      end 
    end 
end 