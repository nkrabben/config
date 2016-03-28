r.packages = c("devtools", "rio", "plyr", "dplyr", "ggplot2")
new.packages <- r.packages[!(r.packages %in% installed.packages()[,"Package"])]
new.packages
if(length(new.packages)) install.packages(new.packages)
