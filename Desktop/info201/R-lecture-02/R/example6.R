#filename: example6.R

#----------------------------------------------
# Creating a list 
#----------------------------------------------
temp1 <- list(loc="Seattle", temp=55, validated=TRUE)
temp2 <- list(loc="Toronto", temp=35, validated=FALSE)

#----------------------------------------------
# Adding a list to a vector 
#----------------------------------------------
temps <- c(temp1,temp2)

#----------------------------------------------
# Appendng a list to a vector 
#----------------------------------------------
append(temps,list(loc="Portland", temp=60, validated=TRUE))
print(temps)

#----------------------------------------------
# Access data in a list  
#----------------------------------------------
# By name and $
loc1 <- temp1$loc
print(loc1)

# By name and double brackets
loc2 <- temp2[["loc"]]
print(loc2)

# By index
temp <- temp1[[2]]
print(temp)