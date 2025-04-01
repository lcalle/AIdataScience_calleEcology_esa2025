# Package Library

require(tidyverse)

getwd()

forest <- read.csv("data/forest.csv")
read

#tryCatch -> R
#Python version

# Syntax of tryCatch

tryCatch(
  expr,
  error = function(e) { ... },
  warning = function(w) { ... },
  finally = { ... }
)

# Example 1: Handling an Error

result <- tryCatch({
  x <- 10 / 0  # This will cause a division by zero error
  x
}, error = function(e) {
  message("An error occurred: ", e$message)
  return(NA)  # Return NA instead of stopping execution
})

print(result)  # Output: NA

# Example 2: Handling Warnings

result <- tryCatch({
  warning("This is a warning!")
  42  # Even though there's a warning, this value will be returned
}, warning = function(w) {
  message("A warning occurred: ", w$message)
  return(-1)  # Return -1 if a warning occurs
})

print(result)  # Output: -1

#Example 3: Using finally

tryCatch({
  stop("Something went wrong!")  # This generates an error
}, error = function(e) {
  message("Error caught: ", e$message)
}, finally = {
  message("This will run no matter what happens.")
})

# Output:

# Error caught: Something went wrong!
#  This will run no matter what happens.





















