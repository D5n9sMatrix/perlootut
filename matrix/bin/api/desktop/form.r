#!/usr/bin/r

## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## -----------------------------------------------------------------------------
library(glue)

## -----------------------------------------------------------------------------
collapse_transformer <- function(regex = "[*]$", ...) {
  function(text, envir) {
    collapse <- grepl(regex, text)
    if (collapse) {
      text <- sub(regex, "", text)
    }
    res <- identity_transformer(text, envir)
    if (collapse) {
      glue_collapse(res, ...)  
    } else {
      res
    }
  }
}

glue("{1:5*}\n{letters[1:5]*}", .transformer = collapse_transformer(sep = ", "))

glue("{1:5*}\n{letters[1:5]*}", .transformer = collapse_transformer(sep = ", ", 
                                                    last = " and "))

x <- c("one", "two")
glue("{x}: {1:5*}", .transformer = collapse_transformer(sep = ", "))

## -----------------------------------------------------------------------------
shell_transformer <- function(type = c("sh", "csh", "cmd", "cmd2")) {
  type <- match.arg(type)
  function(text, envir) {
    res <- eval(parse(text = text, keep.source = FALSE), envir)
    shQuote(res)
  }
}

glue_sh <- function(..., .envir = parent.frame(), 
                    .type = c("sh", "csh", "cmd", "cmd2")) {
  .type <- match.arg(.type)
  glue(..., .envir = .envir, .transformer = shell_transformer(.type))
  
}

filename <- "test"
writeLines(con = filename, "hello!")

command <- glue_sh("cat {filename}")
command
system(command)

