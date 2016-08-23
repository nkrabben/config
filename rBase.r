cat("Base packages\ndevtools\nrio\nplyr\ndplyr\nggplot2")
options(defaultPackages=c(getOption("defaultPackages"),
                          "devtools", "rio", "plyr", "dplyr",
                          "ggplot2"))
