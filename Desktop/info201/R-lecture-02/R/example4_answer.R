#filename: example4_answer.R

compute <- function(n1, n2, n3) {
  # Set the default case 
  t <- 0 
  
  # Check for condition #1
  if (n1 > 0 & n2 > 0 & n3 > 0) {
    t <- n1 *  n3
  }
  
  # check for condition #2
  if (n1 < 0 | n2 < 0 | n3 < 0) {
    t <- sum(n1,n2,n3)
  }
  
  return (t)
}

# Test compute

# All parameters are greater than 1
print(compute(1,2,3))

# One parameter is less than 1
print(compute(-1,0,100))
print(compute(0,-1,100))
print(compute(100,0,-1))

# All parameters are zero
print(compute(0,0,0))

