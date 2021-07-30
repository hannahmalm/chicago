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
        #get user input on which category to choose - get_user_category_input
        get_user_category_input
        #get activity for respective cateogry - list_activities
        # list_activities - this happens after the user category input
        #get user input on which activity they want more information on - get_user_activity_input
        get_user_activity_input
        #print out the name, description, category, and url for the activity - then ask user if they want more input
        #details
        #Do you want to see another activity? - y/n - if yes loop back 
        #new_activty
        #end the CLI
        #goodbye
    end 

    #dont need to scrape this because categories wont change
    #create an instance variables for categories to be able to use it in the instance 
     #list the categories
        #use each with index to iterate over and add an index number
        #the index starts with 0 so add 1 to print out the index starting at 1
    def list_categories 
        @categories = ["Muesums", "Music, Comedy, and Nightlife", "Shopping", "Sports & Recreation", "Theater & Performing Arts", "Tours & Attractions"]
        @categories.each.with_index(1) {|index,category| 
            puts "#{category} - #{index}"
        }
    end 

    def get_user_category_input
        print "Please choose a number associated with a category you would like to see activities for: 
        
        "
        input = gets.to_i
            if(input >= 1 && input <=6) 
              list_activities
            else
             puts "Please enter a valid number 1-6"
            end 
    end 
    
    def list_activities
        puts "The following is a list of activities for category:"
        #add in scraper data
        @activities = ["Shopping at Maceys", "Running Club", "Justin Bieber concert"]
        @activities.each.with_index(1) {|index, activity|
            puts "#{activity} - #{index}"
        }
        puts "Which activity are you interested in learning more about? Please select a number: "
    end 


    def get_user_activity_input
        input = gets.to_i
        if(input >= 1 && input <=100) 
         puts details
        else
         puts "Please choose an activity or type Exit to exit"
        end 
    end

    def details
        puts "Activty Name: "
        puts "Activity Details: "
        puts "URL: "

        new_activty
    end 

    def new_activty
        puts "Do you want to see another activity?"
        input = gets.chomp.to_s 
        if input == "Y" || input == "Yes" || input == "y"
            #loop back to the activity method to start over 
            list_categories
            get_user_category_input
        elsif input == "N" || input == "No" || input == "n"
            goodbye 
        else 
            "Please enter Yes or No"
        end
    end 


    def goodbye
        puts "Thank You for using Chicago Activity Tracker"
    end 
 
end 