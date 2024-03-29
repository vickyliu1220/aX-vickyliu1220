# filename: example3.R

# NOTES ON Natural Amenities Scale and Data Set 
#
# Natural Amenities Scale							
# 
# The Climatic data is from the Area Resource File (ARF). The ARF file is maintained by 							
# Quality Resource Systems (QRS) under contract to the Office of Research and Planning, Bureau of							
# Health Professions, within the Health Resources and Services Administration.  For more information							
# see http://www.arfsys.com .							
# 
# The topography scale is from The National Atlas of the United States of America							
# U.S. Department of Interior, U.S. Geological Survey, Washington, DC., 1970.							
# 
# Land Surface Form Topography codes:							
#   
# Plains			
# 1 = Flat plains			   
# 2 = Smooth plains		
# 3 = Irregular plains, slight relief			
# 4 = Irregular plains
#
# Tablelands
# 5 = Tablelands, moderate relief			
# 6 = Tablelands, considerable relief			
# 7 = Tablelands, high relief			
# 8 = Tablelands, very high relief			
#
# Plains with Hills or Mountains
# 9 = Plains with hills	
# 10 = Plains with high hills	
# 11 = Plains with low mountains	
# 12 = Plains with high mountains	
#
# Open Hills and Mountains						
# 13 = Open low hills							
# 14 = Open hills						
# 15 = Open high hills						
# 16 = Open low mountains					
# 17 = Open high mountains							
# 
# Hills and Mountains	
# 18 = Hills
# 19 = High hills
# 20 = Low mountains	
# 21 = High mountains	
#
# 1993 Rural-urban contiuum code (Also known as the"Beale code")							
# 
# Metro counties:							
#   
# 0  Central counties of metro areas of 1 million population or more							
# 1  Fringe counties of metro areas of 1 million population or more							
# 2  Counties in metro areas of 250,000 to 1 million population							
# 3  Counties in metro areas of fewer than 250,000 population							
# 
# Nonmetro counties:							
#   
# 4  Urban population of 20,000 or more, adjacent to a metro area							
# 5  Urban population of 20,000 or more, not adjacent to a metro area							
# 6  Urban population of 2,500 to 19,999, adjacent to a metro area							
# 7  Urban population of 2,500 to 19,999, not adjecent to a metro area							
# 8  Completely rural or fewer than 2,500 urban population, adjacent to a							
# metro area							
# 9  Completely rural or fewer than 2,500 urban population, not adjacent							
# to a metro area							
# 
# Source:  http://www.ers.usda.gov/briefing/rurality/ruralurbcon/							
#   
#   1993 Urban infuence code							
# 
# Metro counties:							
#   
# 1   Large - Central and fringe counties of metro areas of 1 million							
# population or more 							
# 2   Small - Counties in metro areas of fewer than 1 million population							
# 
# Nonmetro counties:							
#   
# 3   Adjacent to a large metro area with a city of 10,000 or more							
# 4   Adjacent to a large metro area without a city of at least 10,000							
# 5   Adjacent to a small metro area with a city of 10,000 or more							
# 6   Adjacent to a small metro area without a city of at least 10,000							
# 7   Not adjacent to a metro area and with a city of 10,000 or more							
# 8   Not adjacent to a metro area and with a city of 2,500 to 9,999 population 							
# 9   Not adjacent to a metro area and with no city or a city with a population							
#     less than 2,500							
# 
# Source:  http://www.ers.usda.gov/briefing/rurality/urbaninf/							
#   
# Census Divisions							
# 
# 1 = New England							
# 2 = Middle Atlantic							
# 3 = East  North Central							
# 4 = West North Central							
# 5 = South Atlantic							
# 6 = East South Central							
# 7 = West South Central							
# 8 = Mountain							
# 9 = Pacific							
# 
# Amenity Rank (See map in publication)							
# 
# Deviations from the mean							
# 1 = Over -2 (Low)							
# 2 = -1 to -2							
# 3 = 0 to -1							
# 4 = 0 to 1							
# 5 = 1 to 2							
# 6 = 2 to 3 							
# 7 = Over 3 (High)							
# 
# Notes:  The file consists of an amenity code for all of the counties in the lower 48 states.							
# In some cases where the data was not available, estimates were used from a 							
# combined adjacent county.  There are 41 combined counties in this file.  Most of							
# of these combination were the independent cities in Virginia. There  were also county							
# combinations in Arizona, Montana, and New Mexico.							
# 
# For more information on the natural amenity index, contact David McGranahan, DMcG@ers.usda.gov, (202) 694-5356.							

#----------------------------------------------
# Function to create natural amenity data frame
#----------------------------------------------
create_nature_df <- function() {
  # Set working directory
  setwd("~/Documents/__INFO-201/05slides/2019/R-Slides/R-lecture-03")
  
  # Read the file 
  df <- read.csv( "./Data/natural-amenity-simplified.csv",
                  header=TRUE, 
                  stringsAsFactors=FALSE
  )
  return(df)
}

#----------------------------------------------
# Function to print basic info about a data frame
#----------------------------------------------
print_df_info <- function(df) {
  print("---------------")
  print("Data frame info")
  print(paste("   num. rows:     ", nrow(df)))
  print(paste("   num. cols:     ", ncol(df)))
  print("   column names:")
  print(colnames(df))
  print("   row names:")
  print(head(rownames(df),4))
  print("---------------")
}
#----------------------------------------------
# Task: Call make_example_df() to make a data frame
#----------------------------------------------
nature <- create_nature_df()
View(nature)
print_df_info(nature)

#----------------------------------------------
# Task: How many counties are in Washington state?
#----------------------------------------------

#----------------------------------------------
# Task: What is the lowest and highest mean temperatures
# in January
#----------------------------------------------

#----------------------------------------------
# Task: What is the mean temperature in January for 
# Washington State (WA) and North Dakota (ND)?
#----------------------------------------------




