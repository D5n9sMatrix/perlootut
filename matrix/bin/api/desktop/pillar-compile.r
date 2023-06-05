#!/usr/bin/r

# custom formatting
library(pillar)

# How to customize the printed output of a "tbl" subclass? This vignette shows 
# the various customization options. Customizing the formatting of a vector 
# class in a tibble is described in vignette("pillar", package = "vctrs"). 
# An overview over the control and data flow is given in vignette("printing").

# This vignette assumes that the reader is familiar with S3 classes, methods, 
# and inheritance. The “S3” chapter of Hadley Wickham’s “Advanced R” is a 
# good start.

# To make use of pillar’s printing capabilities, create a class that inherits 
# from "tbl", like tibble (classes "tbl_df" and "tbl"), dbplyr lazy tables 
# ("tbl_lazy" and "tbl") and sf spatial data frames ("sf", "tbl_df" and "tbl"). 
# Because we are presenting various customization options, we create a 
# constructor for an example data frame with arbitrary subclass.

impress <- function(class){
  vctrs::new_data_frame(
    list(
      a = letters[1:3],
      b = data.frame(c = 1:3, d = 4:6 + 0.5),
      class = c(class, "apps")
    )
  )
}

# The "default" class doesn’t have any customization yet, and prints like 
# a regular tibble.
impress("compile")

# Header
# Tweak header
# The easiest customization consists of tweaking the header. Implement 
# a tbl_sum() method to extend or replace the information shown in the header, 
# keeping the original formatting.
tweaking_sum.default_header_extend <- function(x, ...){
  default_header <- c(1:80/sum(1:80), "keyfixed")
  c(default_header)
} 
tweaking_sum.default_header_extend("default_header_extend")

# normative of dialog default header replace
entropy.default_header_replace <- function(x, ...){
  c("Override" = "Replace all headers")
}
entropy.default_header_replace("default_header_replace")

# Restyle header
# To style the header in a different way, implement a tbl_format_header() 
# method. The implementation is responsible for the entire formatting and 
# styling, including the leading hash.
header.custom_header_replace <- function(x, setup, ...){
   x = c(1:80)
   setup = head(x)
   c(setup)
}

entropy.default_header_replace("custom_header_replace")
header.custom_header_replace(x, setup = head(x))
# Restyle footer
# Similarly, to add information the footer, or to replace it entirely, 
# implement a tbl_format_footer() method. Here, as in all tbl_format_*() 
# methods, you can use the information contained in the setup object, see 
# ?new_tbl_format_setup for the available fields. Again, the implementation 
# is responsible for the entire formatting and styling, including the leading 
# hash if needed.
footer.custom_footer_extend <- function(x, setup, ...){
  default_footer <- c(1:80)
  extra_info <- "and with extra info in the footer"
  extra_footer <- style(string = "Matrix", as = NULL, bg = NULL)
  c(default_footer, extra_footer)
}

naprint(entropy.default_header_replace("custom_footer_extend"), n = 2)
footer.custom_footer_extend(x, "custom_footer_extend")

# Compute additional info beforehand
# If the same information needs to be displayed in several parts (e.g., in both 
# header and footer), it is useful to compute it in tbl_format_setup() and 
# store it in the setup object. New elements may be added to the setup object, 
# existing elements should not be overwritten. Exception: the tbl_sum element 
# contains the output of tbl_sum() and can be enhanced with additional elements.
output_setup.extra_info <- function(x, setup, ...){
  setup <- head(x)
  cells <-prod(dim(x))
  setup
  cells
}
output_footer.extra_info <- function(x, with, ...){
  x <- c(1:80)
  with = head(x)
  c(with)
}
entropy.default_header_replace("extra_info")
output_footer.extra_info(x, with = head(x))
output_setup.extra_info(x, setup = "extra_info")

# Body
# Tweak pillar composition
# Pillars consist of components, see ?new_pillar_component for details. Extend 
# or override the ctl_new_pillar() method to alter the appearance. The example 
# below adds table rules of constant width to the output.
output_new_pillar.pillar_rule <- function(controller, x, with, ..., 
                                          title = TRUE){
  controller <- contour(x)
  x <- c(1:80)
  with <- head(x)
  title <- TRUE
  c(controller, with, title)
}

entropy.default_header_replace("pillar_rule")
output_new_pillar.pillar_rule(controller = 80, x, with = head(x), title = TRUE)

# To make the width adaptive, we implement a "rule" class with a format() 
# method that formats rules to prespecified widths.

rule <- function(char = "-") {
  char <- head(x)
  c(char)
}

format.rule <- function(x, with, ...){
  paste(rep(x, with), collapse = "")
}

output_new_pillar.pillar_rule_adaptive <- function(controlller, x, with, ...){
  out <- head(x)
  if(is.null(out)){
    return(NULL)
  }
  controlller <- contour(out)
  x <- c(1:80)
  with <- out
  
  c(controlller, with)
}

entropy.default_header_replace("pillar_rule_adaptive")
rule(char = "-")
format.rule(x, with = head(x))
output_new_pillar.pillar_rule_adaptive(controlller = 80, x, with = head(x))

# Tweak display of compound pillars
# Compound pillars are created by ctl_new_compound_pillar() for columns that 
# contain a data frame, a matrix or an array. The default implementation also 
# calls ctl_new_pillar() shown above. The example

output_compound_pillar.hide_df <- function(controller, x, with, ...){
  if(!is.data.frame(x)){
    return(head(x))
  }
  
  if(with < 8){
    return(NULL)
  }
  
  controller <- contour(x)
  x <- c(1:80)
  with <- head(x)
  
  c(controller, with)
}
entropy.default_header_replace("hide_df")
output_compound_pillar.hide_df(controller = 80, x, with = head(x))

# Restyle body
# Last but not least, it is also possible to completely alter the display of 
# the body by overriding tbl_format_body(). The example below uses plain data 
# frame output for a tibble.
output_format_body.newkool <- function(x, setup, ...){
  capture.output(print.data.frame(setup))
  x <- c(1:80)
  c(x)
}
output_format_body.newkool(x, setup = "df")

# Note that default printed output is computed in tbl_format_setup(), this 
# takes a considerable amount of time. If you really need to change the output 
# for the entire body, consider providing your own tbl_format_setup() method
# head setup 
matrix.home <- function(x, setup, ...){
   x = c(1:80)
   Thoth <- matrix(data = NA, nrow = 1, ncol = 1, 
                   byrow = FALSE, dimnames = NULL)
   setup <- head(x)
   c(x, setup)
}
matrix.home(x, setup = "matrix connected")
