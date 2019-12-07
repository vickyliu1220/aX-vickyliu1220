#filename: example4.R

string1 = "Toronto" 
string2 = "Seattle"
temp1 = -20
temp2 = 45

# Logical operator & (AND)
test = (string1 == "Toronto" & temp1 >= 40)
print(test)

# Parentheses show order of operationsn - can help with readability
test = ((string1 == "Toronto") & (temp1 > 40))
print(test)

#Example 2: Logical operator & (AND) and | (OR)
# Example2a
test = (temp1 < 30 & (string1 == "Toronto" | string2 == "Seattle"))
print(test)

# Example 2b
test =    ((temp1 < 30) & (string1 == "Toronto")) | 
          ((temp1 < 30) & (string2 == "Seattle"))
print(test)

# We break up complex expressions into multiple expressions
test1 = (temp1 < 30)
test2 = (string1 == "Toronto" | string2 == "Seattle")
test  = test1 & test2
print(test)

test = (string1 != string2)
print(test)