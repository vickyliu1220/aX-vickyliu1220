# Packages for styling R files


library(lintr)
library(styler)
# applies styles, mostly spacing and indentation this goes on and on ...applies styles, mostly spacing and indentation
style_file("fibonacci_numbers.R")
lint("fibonacci_numbers.R")

library(stringr)
example_string="   hello: are you there?   "
string <- str_to_title(example_string)
print(string)
string <- str_trim(example_string)
print(string)

f <- function(a, b) {
  return(a * b)
}
