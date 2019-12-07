R Introduction: Part I
========================================================
author: INFO-201
date: 
autosize: true

Objectives
========================================================

- Ability to write and run short R scripts and to save scripts in files
- Ability to use numeric, string, and boolean data types in simple R statements
- Ability to use the assignment operator and basic numeric operators
- Ability to write a function.


**Note:**  For this lecture please work in groups of two.

R Scripts I
====================================
source: ./R/example0.R


- Open RStudio
- Make a new R Script file (File > New File > R Script) 
- Type in the following script

```r
# Celcius to Fahrenheit
c <- 20                          
f <- c * 9/5 + 32 
print(f)
```
- Save the script, named `example0.R` in a folder (File > Save )
- Run the script 
  - Select script 
  - Press the "Run" button 
  - Inspect the console window
  
**Task:** What does the script compute? Try to explain how it  works.


R Scripts II
====================================
source: ./R/example1.R
- Download the script from Canvas (Files/Lecture 4/example1.R)
- Please study the R script on the left: What does it do? Go through each statment, one by one
- Please run the script 
- Does it work?   (see [Temperature Converter](https://www.google.com/search?ei=xryYXaCoDaeOgges3r3oDw&q=fahrenheit+to+celsius&oq=farieng&gs_l=psy-ab.1.0.0i10l6j0i10i30l3j0i5i30.281016.559330..560279...3.1..0.918.5625.6j5j1j5-1j5......0....1..gws-wiz.....0..0i71j0i67j0j0i131j0i131i67.jAdmJr1Wopo))

- What are the Fahrenheit temperatures: for 0  C, 40 C, and -32 C? 


An explanation
====================================
source: ./R/example1.R
- Comments begin with "#" and are _ignored_by R.

```r
# A numeric variable holding temperature in Celcius 
```
- The variable, `temp_in_C', that is, "temperature in Celcius" is assigned the numeric value 20.

```r
temp_in_C <- 20
```

- Use the standard formula for converting C to F. Note multiplicaiton (*), division (/), and addition (+).

```r
temp_in_F <- temp_in_C * 9/5 + 32 
```

- The print() statement tells us what's in the variable (temp_in_F) 

```r
print(temp_in_F)
```

```
[1] 68
```

Programming Errors
========================================================
- Scripts often contain "bugs" - that is, programming errors.  What is the bug in this script?  How can the error be corrected?


```r
# A numeric variable holding temperature in Celcius 
temp_in_C <- 20 

> # Using standard formula, compute temperature in Fahrenheit
> temp_in_F <- temp_C * 9/5 + 32 
```
The Error message:
```
Error: object 'temp_C' not found
```

**Task:**  Ask your partner to add a bug to the program.  Then, find the bug and fix it.

Programming Task
========================================================

**Task:** Write a script for converting Fahrenheit to Celcius.
> Note: The formula is  C = (F-32) * 5/9 where C Celcius and F is Fahrenheit.

**Test:** Test your script on 32F, 100F, and -42F 

Solution (Farhenheit to Celcius)
========================================================
source: ./R/example2.R


```r
# filename: example2.R
# Task: Given a temperature in Fahrenheit, compute the temperature in Celcius

# A numeric variable holding temperature in Fahrenheit 
temp_in_F <- -42.0

# Using standard formula, compute temperature in Fahrenheit
temp_in_C <- (temp_in_F-32) * 5/9  

# Print the result
print(temp_in_C)
```
Data Types
========================================================
- Numeric data type:  1 -10 10.1 99.9999 
- Character data type: "Toronto" "Bill" "Into thin air" 
- Logical/boolean data type: TRUE FALSE

Logical Operators with Strings and Booleans
========================================================
source: ./R/example3.R
Often we need to compare the contents of a variable. Suppose, for example, we have two cities and we need to know if they are the same city or a different city. 

```r
city1 = "Toronto" 
city2 = "Seattle"
```

```r
test = (city1 == city2)
print(test)
```

```
[1] FALSE
```

```r
test = (city1 != city2)
print(test)
```

```
[1] TRUE
```
(Here we know what is in the two varilables but often we do not.)

Logical Operators with Strings and Booleans
========================================================
source: ./R/example3.R

We can also compare strings by their alphabetic order.

```r
city1 = "Toronto" 
city2 = "Seattle"
```


```r
test = (city1 > city2)
print(test)
```

```
[1] TRUE
```

```r
test = (city1 < city2)
print(test)
```

```
[1] FALSE
```


Logical Operators with Strings and Booleans
========================================================
source: ./R/example4.R

Relational operators for making comparisons
- Equal (==)
- Not equal (!=)
- Greater than (>)
- Greater than or equal (>=)
- Less than (<)
- Less than or euqal (<=)

**Tasks:**
- Talk outloud and read the expressions to the left.
- Create an expression with NOT (!)

***
Logical pperators
- AND (&)
- OR (|)
- NOT (!) 


Conditional statements
========================================================
source: ./R/example6.R
We can use the IF statement to run different blocks of code.

- For example, we can check if it is cold.

```r
# Today's temperatures in Farenheit
string1 = "Toronto" 
string2 = "Seattle"
temp1 = -20
temp2 = 33
```


```r
if (temp1 < 0) {
  print("It is cold.")
} else {
  print("It is not cold.")
}
```

```
[1] "It is cold."
```

```r
print(temp1)
```

```
[1] -20
```

Conditional statements (continued)
========================================================
We can write very complicated conditional expressions

```r
# Today's temperatures in Fahrenheit
string1 = "Toronto" 
string2 = "Seattle"
temp1 = -20
temp2 = 45
```


```r
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
```

```
[1] "It is really cold."
```

```r
print(temp1)
```

```
[1] -20
```

Conditional statements (continued)
========================================================
Change the conditional statement so that it meets the folloiwng specification 
```
Temperature   Message (show one message only) 
-----------   ------------------------------
< -10         "It is really cold." 
< -5          "It is fairly cold." 
< 0           "It is cold."
= 0           "It is freezing."
< 5           "It is above freezing."
>= 5          "It is getting warm."
>= 20         "It is warm or more than warm."
```
Functions
====================================
source: ./R/example7.R

- Recall the code for converting Celcius to Fahrenheit. 

```r
temp_in_C <- 20 
temp_in_F <- temp_in_C * 9/5 + 32 
print(temp_in_F)
```
- This a "well-defined" computation, which we might want to perform many times.


```r
# This function converts Celcius to Farenheit 
CelciusToFarenheit <- function(temp_in_C) {
  temp_in_F <- temp_in_C * 9/5 + 32 
  return (temp_in_F)
}
```
**Task:** Study this syntax for this function definition.

Functions: Key points
====================================

- An executable block of code that you **reuse** in other programs
- Accepts 0, 1, or many inputs (arguments, parameters)
- Returns a **single** output
- Functions are a form of **abstraction** 
  - Break large problems into building blocks
  - Ignore details 
  - Assume function works (simplifies programming)



Functions: Three key parts 
====================================
source: ./R/example7.R

- Study this function

```r
# This function converts Celcius to Farenheit 
CelciusToFarenheit <- function(temp_in_C) {
  temp_in_F <- temp_in_C * 9/5 + 32 
  return (temp_in_F)
}
```
Part I: Function Name and Argument(s)
====================================

```r
CelciusToFarenheit <- function(temp_in_C) {
  
}
```
Key points:
- Just one argument in this example. What is the argument?
- What is the function name? 
- What is the syntax for specifying a function?

Part II: Block of Code
====================================

```r
{
  temp_in_F <- temp_in_C * 9/5 + 32 
}
```
- The block of code could be many lines long
Part III: Return the Result of the Function
====================================

```r
    return (temp_in_F)
```

Calling a Function 
====================================

```r
# Call function and put result in variable, f
f <- CelciusToFarenheit(20)
print(f)
```

```
[1] 68
```

```r
# Call function "inside" print
print(CelciusToFarenheit(37.7778))
```

```
[1] 100
```
**Question:** Is print() a function? 

Functions: You try it
====================================

**Task:** Write a function for converting Fahrenheit to Celcius.
> Note: The formula is  C = (F-32) * 5/9 where C is Celcius and F is Fahrenheit.

**Test:** Test your script on 32F, 100F, and -42F 

Functions: Solution
====================================

```r
# This function converts Celcius to Farenheit 
FarenheitToCelcius <- function(temp_in_F) {
  temp_in_C <- (temp_in_F - 32) *  5/9 
  return (temp_in_C)
}

print(FarenheitToCelcius(32))
```

```
[1] 0
```

Functions: Solution
====================================

```r
print(FarenheitToCelcius(100))
```

```
[1] 37.77778
```

```r
print(FarenheitToCelcius(-42))
```

```
[1] -41.11111
```

The round() function 
====================================
- The round() function is used to round off decimal numbers

```r
print(FarenheitToCelcius(-42))
```

```
[1] -41.11111
```
- Compare

```r
c <- FarenheitToCelcius(-42)
rounded_c <- round(c,1)
print(rounded_c)
```

```
[1] -41.1
```
**Task:** Explain each line in this script

The round() function 
====================================
- We can "nest" functions many layers deep

```r
 print(round(FarenheitToCelcius(100),1))
```

```
[1] 37.8
```
**Task:** Find the round() function in the documentation

Finished
====================================
-
-
-