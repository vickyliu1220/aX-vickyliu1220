# filename: example7.R

# This function converts Celcius to Farenheit 
CelciusToFarenheit <- function(temp_in_C) {
  temp_in_F <- temp_in_C * 9/5 + 32 
  return (temp_in_F)
}

# This function converts Farenheit to Celcius 
# Todo: 
# (1) Fill in argument 
# (2) Fill in the function body
# (3) Fill in return value
FarenheitToCelcius <- function() {
  # Fill in function body
  return ()
}

# Compute Farenheit temperatures for 0, 10, -42 and 42 Celcius 
temp1 <- CelciusToFarenheit(0)
temp2 <- CelciusToFarenheit(10)
temp3 <- CelciusToFarenheit(-42)
temp4 <- CelciusToFarenheit(42)

# Todo: Compute Celcius temperatures for 0, 32, -10, 50 and 105 Farenheit


# Print results 
print(temp1)
print(temp2)
print(temp3)
print(temp4)