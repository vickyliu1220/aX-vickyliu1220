#filename: example6.R

# Today's temperatures in Celcius
string1 = "Toronto" 
string2 = "Seattle"
temp1 = -20
temp2 = 33

# Example 1
if (temp1 < 0) {
  print("It is cold.")
} else {
  print("It is not cold.")
}
print(temp1)

# Example 1
if (temp1 < -10) {
  print("It is really cold.")
} else if (temp1 >= -10 & temp1 < -5) {
  print("It is fairly cold.")
} else if (temp1 > 30) {
  print("It is hot")
} else  {
  print("It is neither cold nor hot")
}
print(temp1)

