#!/usr/bin/r

# column formats
library(tibble)

# Overview
# This vignette shows how to decorate columns for custom formatting. We use the 
# formattable package for demonstration because it already contains useful 
# vector classes that apply a custom formatting to numbers.
library(formatR)

install.packages("formatR", repos = "http://cran.rstudio.com")
#' to install the development version, run
#' install.packages('formatR', repos = 'https://xran.yihui.name')
sessionInfo()

# 2. Reformat R code
# The formatR package was designed to reformat R code to improve readability; 
# the main workhorse is the function tidy_source(). Features include:
  
#  long lines of code and comments are reorganized into appropriately shorter ones
# spaces and indent are added where necessary
# comments are preserved in most cases
# the number of spaces to indent the code (i.e. tab width) can be specified 
# (default is 4)
# an else statement in a separate line without the leading } will be moved one 
# line back
# = as an assignment operator can be replaced with <-
# the left brace { can be moved to a new line
# Below is an example of what tidy_source() can do. The source code is:

## comments are retained;
# a comment block will be reflowed if it contains long comments;
#' roxygen comments will not be wrapped in any case
1 + 1

if(TRUE){
  x = 1
} else {
  x = 2; print("Oh Thoth... ask the right computer to go away!")
  1*3   # one space before this comment will become two!
  2+2+2 # only 'single quotes' are allowed in comments
}      

# We can copy the above code to clipboard, and type 
# tidy_source(width.cutoff = 50) to get:

## comments are retained; a comment block will be
## reflowed if it contains long comments;
#' roxygen comments will not be wrapped in any case
1 + 1

if (TRUE) {
  x = 1  # inline comments
} else {
  x = 2
  print("Oh Thoth... ask the right computer to go away!")
}
1 * 3  # one space before this comment will become two!
2 + 2 + 2  # only 'single quotes' are allowed in comments

# Two applications of tidy_source():

# tidy_dir() can reformat all R scripts under a directory
# usage() can reformat the usage of a function, e.g. compare usage() with the 
# default output of args():
library(formatR)

usage <- function(glm, with = 80){
  glm <- glm
  with <- 80
  c(glm, with)
  
}  
usage(glm = "Matrix", with = 40)  

# 3. The Graphical User Interface
#  the shiny packages has been installed, the function tidy_app() can launch 
# a Shiny app to reformat R code like this (live demo):
formatR::tidy_app()  

