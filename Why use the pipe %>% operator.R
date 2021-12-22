#why use the pipe operator?

install.packages("tidyr")
library(tidyr)

df<-mtcars
#nesting
result<-arrange(sample_n(filter(df, mpg>20), size=5), desc(mpg))
result

#lets use multiple assignments instead of nesting
a<-filter(df, mpg>20)
b<-sample_n(a, size=5)
results<-arrange(b, desc(mpg))
results

#pipe
result<-df %>% filter(mpg>20)%>% sample_n(size=5) %>% arrange(desc(mpg))
result

# pipe is easy to read, its clear, and consise by creating a nice pipe of operations


