# filename: example1.R

#----------------------------------------------
# Task: Edit the following commands to load 
# the CSV people file into R
#----------------------------------------------

#----------------------------------------------
# Step #1: Set your working directory
# Path will be something like:
#    "~/Documents/<XXX>/R-lecture-03"
# You can also use: 
#   RStudio Menu: Session: Set Working Directory: Choose Directory
#----------------------------------------------
wd_path <- "~/desktop/info201/R-lecture-03"
setwd(wd_path)

# Note: A helpful command is getwd() for getting the working directory
# call: getwd()

#----------------------------------------------
# Step #2: Read the CSV file with read.csv() 
#----------------------------------------------
people_df  <- read.csv("./Data/people.csv",
                       header = TRUE,
                       stringsAsFactors = FALSE)

#----------------------------------------------
# Step #3: Use the head() function to check the data
#----------------------------------------------
head(people_df)

#----------------------------------------------
# Step #4: Find out other informationa bout data frame
# Use functions dim(),colnames(), and rownames()
#----------------------------------------------

