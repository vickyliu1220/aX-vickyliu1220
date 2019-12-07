#Write a function to_euros
#One input: a USD amount
#Returns: conversion to Euros

#input
to_euros <- function(usd){
  usd * 0.91
}

to_euros(4)

#round
is_round <- function(num){
  round(num) == num
}

is_round(3432.23)