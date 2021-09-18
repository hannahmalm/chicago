require 'pry'
class Chicago::Scraper 
    def self.scrape_category
        doc = Nokogiri::HTML(open("https://www.choosechicago.com/things-to-do/find-things-to-do/"))
        category = doc.css(".card-subtitle").css("h6")
    
      category.each do |c|
        category_name =  c.text
        Chicago::Category.new(category_name)
      end 
    end 

end 