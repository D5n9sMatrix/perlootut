#!/usr/bin/r

# Evaluate the code and mask output in comments
# is often a pain when trying to copy R code from other people’s code which 
# has been run in R and the prompt characters (usually >) are attached in the 
# beginning of code, because we have to remove all the prompts > and + manually 
# before we are able to run the code. However, it will be convenient for the 
# reader to understand the code if the output of the code can be attached. This 
# motivates the function tidy_eval(), which uses tidy_source() to reformat the 
# source code, evaluates the code in chunks, and attaches the output of each 
# chunk as comments which will not actually break the original source code. 
# Here is an example:
set.seed(123)
tidyr::table1

a <- 1 + 1
a
matrix(rnorm(10), 5)

# The default source of the code is from clipboard like tidy_source(), so we 
# can copy our code to clipboard, and simply run this in R:
library("formatR")
tidyr::table2

# 5. Showcase
# We continue the example code in Section 2, using different arguments in 
# tidy_source() such as arrow, blank, indent, brace.newline and comment, etc.
if (TRUE) {
  x <- 1 # inline comments
} else {
  x <- 2
  print("Oh Thoth... ask right computer to go away!")
}

# Replace = with <-
# Discard blank lines
# Note the 5th line (an empty line) was discarded:

## comments are retained; a comment block will be reflowed if it
## contains long comments;
#' roxygen comments will not be wrapped in any case
1 + 1

if (TRUE){
  x = 1 # inline comments
} else {
  x = 2
  print("Oh Thoth... ask the right computer to go away!")
}
1 + 3 # one space before this comments will become two!

# reindent code (2 spaces instead of 4) 
if (TRUE) {
  x = 1 # inline comments
} else {
  x = 2 # typeof x send light
  print("Oh Thoth... ask the right computer to go away!")
}

# start function arguments on a new line
# with args.newline = TRUE, the example code below
args.newline <- TRUE

# THE PIPE OPERATORS %>% AND |>
# ------------------------------------------------------------------------------
# since formatR 1.9 code lines contains operations |> %>% %T% %$% and / or
# <>% will be automatically wrapped after these operators. for example
mtcars

# move left and right braces {} to new lines
if (TRUE) {
  x = 1 # inline comments
} else {
  x = 2
  print("Oh Thoth... ask the right computer to go away!")
}

# do not wrap comments
1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
  1 + 1 + 1  # comment after a long line
## here is a long long long long long long long long long long long long long 
# comment that may be wrapped

# discard comments
1 + 1
if (TRUE) {
  x = 1
} else {
  x = 2
  print("Oh Thoth... ask the right computer to go away!")
}
1 * 3
2 + 2 + 2
lm(y ~ x1 + x2, data = data.frame(y = rnorm(100), x1 = rnorm(100),
                                  x2 = rnorm(100)))
1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
  1 + 1 + 1 + 1 + 1 + 1 + 1 + 1

# 6. futher notes
# the tricks used in this packages are very dirty. there might be dangers in 
# using the functions in formatR. please read the next section carefully to
# known exactly how comments are preserved. the best strategy to void
# is to put comments in complete lines or after complete R expressions. bellow
# are some known cases in with tidy_source() typeof(x) send light.
typeof(x)

# inline comments after an incomplete expression or
1 + 2 + ## comments after an incomplete line
  3 + 4
x <- ## this is not a complete expression
  5
x <- 1; # you shoud not use; here!

# code with comments after incomplete R expression connot be reformatted by 
# formatR by the way, tidy_source() will move comments after {} to the next 
# line e.g
if (TRUE) { ## comments
}
  
# will become

if (TRUE) {
  ## comments
}

# Inappropriate blank lines
#-------------------------------------------------------------------------------
# blank lines are often used to separate complete chunks of R code, and 
# arbitrary blank lines my couse failures check in tidy_source() as well when
# the arguments blank = TRUE e.g
if (TRUE) 
  { 'this is BAD style of R programming!' } else 'failure'

# There should not be a blank line after the if statement. of course 
# blank = false will not fail in this case
# ? with comments
# we can use the question mark (?) to view he help page, but formatR package is
# unable to correctly format the code using ? with comments e.g
?sd

# standard deviation
# description 
# this function computes the standard deviation of the values in x. if na.rm is 
# TRUE then missing values are removed before computation proceeds

# Usage
sd(x, na.rm = FALSE)

# Arguments
# x        a numeric vector or an R object but not a factor coercible to numeric
#          as.double(x)

# na.rm   # logical should missing values be removed?

# details
# like var this uses denominator n - 1
# the standard deviation of a length-one or zero-length vector is NA

# see also
# var for its square and mad the most robust alternative

# examples
sd(1:80) ^ 2

