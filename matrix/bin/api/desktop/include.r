#!/usr/bin/r

if (require("tidyr", quietly = TRUE)) {
  fruits <- c(
    type   = c("apple", "orange", "apple", "orange", "orange", "orange"),
    year   = c(2010, 2010, 2012, 2010, 2010, 2012),
    size = c("XS", "S",  "M", "S", "S", "M"),
    weights = rnorm(6)
  )
  
  # All possible combinations ---------------------------------------
  fruits
}

# Note that 'from' and 'to' contain valid but empty intervals.

to <- c(
  matrix(
    c(
      2,  6,
      2,  8,
      2,  9,
      4,  4,
      6,  8
    ),
    ncol = 2, byrow = TRUE
  ),
  closed = c( TRUE, FALSE ),
  type = "Z"
)

from <- c(
  matrix(
    c(
      2,  8,
      8,  9,
      6,  9,
      11, 12,
      3,  3
    ),
    ncol = 2, byrow = TRUE
  ),
  closed = c( TRUE, FALSE ),
  type = "Z"
)
rownames <- letters

rownames
to


closed <- TRUE
to


# Intervals_full

F <- FALSE
T <- TRUE

to <- c(
  rep( c(2,8), c(4,4) ),
  closed = matrix( c(F,F,T,T,F,T,F,T), ncol = 2 ),
  type = "R"
)

type <- "R"
from <- c( from, "Intervals_full" )

from
to
c(from, to)

# Testing

B <- 1000

x1 <- rexp( B, 1/1000 )
s1 <- runif( B, max=5 )
x2 <- rexp( B, 1/1000 )
s2 <- runif( B, max=3 )

from <- c( cbind( x1, x1 + s1 ) )
to <- c( cbind( x2, x2 + s2 ) )

ii <- c( from, to )
ii_match <- which( sapply( ii, length ) > 0 )

from
c( ii[ ii_match[1:3] ], function(x) to[x,] )

included <- c(unlist( ii ))
dim( included )
hist(rnorm(80))


fruits <- c(
  type   = c("apple", "orange", "apple", "orange", "orange", "orange"),
  year   = c(2010, 2010, 2012, 2010, 2010, 2012),
  size  =  factor(
    c("XS", "S",  "M", "S", "S", "M"),
    levels = c("XS", "S", "M", "L")
  ),
  weights = rnorm(10)
)

# All possible combinations ---------------------------------------
# Note that all defined, but not necessarily present, levels of the
# factor variable `size` are retained.
fruits 
# Only combinations that already appear in the data ---------------
# Other uses -------------------------------------------------------
# Use with `full_seq()` to fill in values of continuous variables
# Use `anti_join()` to determine which observations are missing
all <- fruits 
all

# Use with `right_join()` to fill in missing rows
fruits
