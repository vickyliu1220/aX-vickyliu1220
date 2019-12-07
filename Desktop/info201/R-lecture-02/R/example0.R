# filename: example0.R

#install.packages("stringr")

library("stringr")

# The stringr package provides functions for manipulating strings
# See examples: 

str <- " once upon a time there was a large horse by a tree "
print(str)

# Take away whitespace at beginning and end of string
t <- str_trim(str)
print(t)

print(str_to_upper(str))                  # Put all letters in UPPER case
print(str_to_title(str))                  # Put string in "title" case 
print(str_starts(str,"o"))                # Does string begin with "o"?
print(str_starts(str_trim(str),"o"))      # Does string begin with "o" after trimming?
print(str_ends(str,"tree "))              # Does string end with "tree "?

