#filename: example5.R

cities <- c("Vancouver", "Seattle", "Toronto", "New York", "Portland")
temps <- c(32,50,86.6,100,55)

# How many elements are in the vector?
l <-length(cities)
print(l)

cities_UPPER_case <- toupper(cities)
print(cities_UPPER_case)

#----------------------------------------------
# Apply statistical functions to a numeric vector 
#----------------------------------------------
avg = mean(temps)
sum = sum(temps)
max = max(temps)
min = min(temps)

print(sum)
print(avg)
print(min)
print(max)

# Convert F into C for the vector - step-by-step  (Four statements)
# Recall formuala: C = (F-32) * 5/9 

# Print F temperature 
print(temps)

# Subtract 32 from each number in temps
t1 <- temps - 32

# Multiple each nuber by 5
t2 <- t1 * 5 

# Divide each number by 9
t3 <- t2 / 9

# Round off each number to one decimal place 
t4 <- round(t3,1)

print(t1)
print(t2)
print(t3)
print(t3)

# Convert temps in F to temps in C (One statement!!)
temps_in_C <- round((temps - 32) * 5 /9,1)

#----------------------------------------------
# Vectorized operations 
#----------------------------------------------
temps_2018 <- c(32,50,86.6,100,55)
temps_2019 <- c(32,55,90,76,55)

# Compute the absolute difference between the two vectors (elements pairs)
temp_diff <- abs(temps_2018 - temps_2019)
print (temp_diff)

# Apply a relational operator to each element pair 
temp_comp <- temps_2019 > temps_2018
print(temp_comp)

temp_comp <- temps_2019 == temps_2018
print(temp_comp)

#----------------------------------------------
# Indexing by position 
#----------------------------------------------

# The first item
print(temps_2018[1])

# The last item
len <- length(temps_2018)
print(temps_2018[len])

#----------------------------------------------
# Indexing by vector of indices
#----------------------------------------------
temps_2018 <- c(32, 50, 86.6, 100, 55)
temps_2019 <- c(32, 55, 90, 76, 55)
temps_diff <- abs(temps_2018 - temps_2019)

# Retreive the first and forth elements
indices <- c(TRUE, FALSE, FALSE, TRUE, FALSE)
print(temps_diff[indices])

#----------------------------------------------
# Vector Indexing (Logical Indices)
#----------------------------------------------
temps_2018 <- c(32, 50, 86.6, 100, 55)
temps_2019 <- c(32, 55, 90, 76, 55)
temps_diff <- abs(temps_2018 - temps_2019)

# The relational expression (a kind of query)
big_diffs <- temps_diff > 4
print(big_diffs)
print(temps_diff[big_diffs])

# Same result in one line (study carefully)
print(temps_diff[temps_diff > 4])

