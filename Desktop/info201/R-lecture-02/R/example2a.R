# Poor style examples    
# This is a very long comment. Comments - or any like of code - should not be longer than 80 characters.

#install.packages("lintr") # only once per machine
#install.packages("styler") # only once per machine

library(lintr)
library(styler)



library(stringr)
example_string="   hello: are you there?   "
string <- str_to_title(example_string)
print(string)
string <- str_trim(example_string)
print(string)

f <- function(a,b) {
  return(a * b)
}
