require 'pry'
class Chicago::CLI 
    
    #call the cli file from bin/chicago using Chicago::CLI.new.call
    #Use namespacing on this Module because the CLI might be named chicago elsewhere
    #.new is used to trigger the initialize method
    #if you call self in a class method it will return the class - self in the intialize method is an instance of the class

    def call 
        puts 'Welcome to Chicago Activities!'
        #print out a list of Categories - list_categories
        list_categories
        puts 'Please choose a number associated with a category you would like to see activites for.'
        #get user input on which category to choose - get_user_category_input
        get_user_category_input
        #get activity for respective cateogry - list_activities
        #get user input on which activity they want more information on - get_user_activity_input
        #print out the name, description, category, and url for the activity - then ask user if they want more input
        
    end 

    #dont need to scrape this because categories wont change
    #create an instance variables for categories to be able to use it in the instance 
     #list the categories
        #use each with index to iterate over and add an index number
        #the index starts with 0 so add 1 to print out the index starting at 1
    def list_categories 
        @categories = ["Muesums", "Music, Comedy, and Nightlife","Shopping","Sports & Recreation", "Theater & Performing Arts", "Tours & Attractions"]
        @categories.each.with_index(1) {|index,category| 
            puts "#{category} - #{index}"
        }
    end 

    def get_user_category_input
        user_category_choice = gets.chomp.to_i
    end 

    #based on the category listed above, scrape the website to list out the activities associated with the category choosen 
    def list_activities

    end 
 


end 