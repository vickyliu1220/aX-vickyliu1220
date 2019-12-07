# filename: example2.R

#----------------------------------------------
# Function to make an example data framw
#----------------------------------------------
make_example_df <- function() {
  people <- data.frame(
    name = c("Ada", "Bob", "Chris", "Diya", "Emma"),
    height = c(64, 74, 69, 69, 71),
    weight = c(135, 156, 139, 144, 152),
    stringsAsFactors = FALSE
  )
  return(people)
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
  print(str(df))
  print("---------------")
  print(sapply(df, class))
  print("---------------")
}

#----------------------------------------------
# Task: Call make_example_df() to make a data frame
#----------------------------------------------
df <- make_example_df()
print("------ The table ------")
print(df)

#----------------------------------------------
# Task: What are the column names?
#----------------------------------------------

#----------------------------------------------
# Task: What are the row names?
#----------------------------------------------

#----------------------------------------------
# Task: View the data frame with the View() command
#----------------------------------------------

#----------------------------------------------
# Example 1: Select rows that make condition
#----------------------------------------------
print("------ Example 1 ------")
# Get heights and weights as vectors
heights <- df[,"height"]
weights <- df[,"weight"]

# Create filter through two conditions 
filter <- (heights >= 70) & (weights < 155)

# Use filter to generate result 
result <- df[filter,]
print(result)

#----------------------------------------------
# Example 2: Same query but compact notation 
# Task: Study carefullly how this works
#----------------------------------------------
print("------ Example 2 ------")
result <- df[(df$height>=70) & (df$weight < 155),]
print(result)

#----------------------------------------------
# Task: Write a query which returns rows 
# where the name is "Ada" or the weight of 
# the person is greater than 150
#----------------------------------------------
filter1 <- df[,"name"] == "Ada"
filter2 <- df[,"weight"] > 150

filter <- filter1 | filter2
result1 <- df[filter, ]
print(result1)


