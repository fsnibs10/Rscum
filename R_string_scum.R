# about string
# two main website to study
# https://cloud.tencent.com/developer/ask/143622 
# https://www.cnblogs.com/nkwy2012/p/8601562.html

# extract substring according to pattern match.
files[i] <- "20200129_fig1_X_ZD203-4h_vs_0h_Y_ZD203-12h_vs_0h.xls"
library(stringr)
myxlab1 <- str_extract(files[i],"(?<=X\\_).+?(?=\\_Y)") 
myxlab2 <- str_replace(myxlab1,"\\_vs\\_","\\/")
myylab1 <- str_extract(files[i],"(?<=Y\\_).+?(?=\\.xls)")
myylab2 <- str_replace(myylab1,"\\_vs\\_","\\/")

