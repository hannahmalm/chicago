require 'pry'
class Chicago::CLI 
    
    #call the cli file from bin/chicago using Chicago::CLI.new.call
    #Use namespacing on this Module because the CLI might be named chicago elsewhere
    #.new is used to trigger the initialize method
    #if you call self in a class method it will return the class - self in the intialize method is an instance of the class

    def call 
        puts 'Welcome to Chicago Activities!'
        #get_categories
        #print out a list of Categories - list_categories
        list_categories
        #get user input on which category to choose - get_user_category_input
        get_user_category_input
        #get activity for respective cateogry - list_activities
        # list_activities - this happens after the user category input
        #get user input on which activity they want more information on - get_user_activity_input
        get_user_activity_input
        
    end
 #---------------------------------------------------------------------------------------  
    #this corresponds to the category.rb file and the category class     
    # def get_categories 
        Chicago::Scraper.scrape_category
        @categories = Chicago::Category.all 
    # end 

 #-------------------------------------------------------------------------------
    def list_categories #DONE
        @categories = 
        @categories.each.with_index(1) {|index,category| 
            puts "#{category} - #{index}"
        }
    end 
        #list the categories
        #use each with index to iterate over and add an index number
        #the index starts with 0 so add 1 to print out the index starting at 1
#-------------------------------------------------------------------------------------------------------
    def get_user_category_input #DONE - DONT NEED SCRAPER DATA - THIS IS HARDCODED FROM LIST_ACTIVITIES
        print "Please choose a number associated with a category you would like to see activities for: 
        
        "
        input = gets.to_i
            if(input >= 1 && input <=6) 
             list_activities
            else
    #after entering the valid number, you need to list the activities
             puts "Please enter a valid number 1-6"
             input = gets.to_i
             list_activities
            end 
    end 

#--------------------------------------------------------------------------------------------------------
    
    def list_activities #Logic Done
        puts "The following is a list of activities for category:"
        @activities = ["Shopping at Maceys", "Running Club", "Justin Bieber concert"]
       # Chicago::Activity.all.each.with_index
        @activities.each.with_index(1) {|index, activity|
            puts "#{activity} - #{index}"
        }
   
        puts "Which activity are you interested in learning more about? Please select a number: "
    end 

#--------------------------------------------------------------------------------------------------------
    def get_user_activity_input
        input = gets.to_i
        if(input >= 1 && input <=100) #this logic might need to change depending on input scraper
         puts details
        else
         puts "Please choose a valid activity"
         input = gets.to_i 
         details
        end 
    end
#--------------------------------------------------------------------------------------------------------
    def details #DONE
        puts "Activty Name: SCRAPER DATA"
        puts "Activity Description: SCRAPER DATA"
        puts "Activity URL: SCRAPER DATA"
        new_activty
    end 


#------------------------------------------------------------------------------------------------------
    def activity_loop #DONE
        list_categories
        get_user_category_input
        list_activities
        get_user_activity_input
    end 

#------------------------------------------------------------------------------------------------------

    def new_activty #DONE
        puts "Do you want to see another activity?"
        input = gets.chomp.to_s 
        if input == "Y" || input == "Yes" || input == "y" || input == "yes"
            activity_loop
        elsif input == "N" || input == "No" || input == "n" || input == "no"
            goodbye 
        else 
           puts "Please enter Yes or No"
            input_new = gets.chomp.to_s 
            if input_new == "Yes"
                activity_loop
            else 
                goodbye
            end
        end
    end 

#---------------------------------------------------------------------------------------------------
    def goodbye #DONE
        puts "Thank You for using Chicago Activity Tracker"
    end 
#---------------------------------------------------------------------------------------

end 