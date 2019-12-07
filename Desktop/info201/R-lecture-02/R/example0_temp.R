# filename: example0_temp.R

# This function converts Celcius to Farenheit 
celcius_to_farenheit <- function(temp_in_C) {
  temp_in_F <- temp_in_C * (9 / 5) + 32 
  return (temp_in_F)
}

# Calling a function - two examples 
print(celcius_to_farenheit(37.3))
print(celcius_to_farenheit(0))

# Rounding the result
t <- celcius_to_farenheit(37.3)
t <- round(t,1)                     # Note: How does this work?
print(t)

# Nested functions
print(round(celcius_to_farenheit(37.3),1))
