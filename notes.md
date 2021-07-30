#ls -lah in the terminal if you get a permission denied to see the permission for the fild 
#cd = change directory
#add executable (x) permissions by typing chmod +x chicago in the terminal
#add shebang line 
#command to make a new file: touch name.md
#namespacing - ability to distinguish between other apps and your apps if they have the same name
#bundle install gems
#for more help and vidos: https://instruction.learn.co/stuent/video_lectures#/
#fill in to-dos on the gemspec file - add dependencies within this file
#bin/chicago is the run file aka execution file which runs the code - the Shebang line is telling something to execute the program in ruby 
#use "git add ."
#git commit -m 'message'
#git push
#to see what repo you are pushing to, 'git remote -v' prints out the repo

1. Flow of the program
    User starts app 
        - Welcome to the Chicago Activity Tracker! What Category are you interested in learning more about? 
        - Press 1 for ____
        - Press 2 for ____
        - Press 3 for ____
        - Press 4 for ____
        - Press 5 for ____
    CLI greets user and asks what category of activity they want
    User selects category they want - Accepts input
    CLI provides list of activities and asks user which one it wants more info on (can this be a loop?)
      -Current #{category} activities in Chicago: 
        Press 1 to learn more about _____
        Press 2 to learn more about _____
        Press 3 to learn more about _____
    User provides activity they want input on
    CLI provides info and details and asks if they want to choose another activity (y or n)
2. Classes that we want - Classes are singular - they represent a blueprint or factory
    CLI
    Activity
    Scraper
3. Class relationships