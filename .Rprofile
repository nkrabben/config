local({r <- getOption("repos")
      r["CRAN"] <- "https://cloud.r-project.org/"
      options(repos=r)})

.libPaths("~/.rLibs")

options(stringsAsFactors=FALSE)

options(max.print=100)

options(scipen=10)

# options(show.signif.stars=FALSE)

options(menu.graphics=FALSE)

options(prompt="> ")
options(continue="... ")

options(width = 80)

utils::rc.settings(ipck=TRUE)

.First <- function(){
  #source("~/.config/rBase.r")

  # Optionally load up toolkit profiles for each R programming paradigm.
  cat("Profiles Available: None yet")
  #Shiny <<- function() source("~/.config/shiny.R")
  #Sim <<- function() source("~/.config/simulation.R")
  #Concerto <<- function() source("~/.config/concerto.R")

  if(interactive()){
    library(utils)
    timestamp(,prefix=paste("##------ [",getwd(),"] ",sep=""))

  }
}

.Last <- function(){
  if(interactive()){
    hist_file <- Sys.getenv("R_HISTFILE")
    if(hist_file=="") hist_file <- "~/.RHistory"
    savehistory(hist_file)
  }
}

if(Sys.getenv("TERM") == "xterm-256color")
  library("colorout")

.env <- new.env()
attach(.env)

.env$unrowname <- function(x) {
  rownames(x) <- NULL
  x
}

.env$unfactor <- function(df){
  id <- sapply(df, is.factor)
  df[id] <- lapply(df[id], as.character)
  df
}

message("*** Successfully loaded .Rprofile ***")
