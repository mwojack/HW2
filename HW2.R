
install.packages("tidyverse")
df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                     'Richards','George','Ema','Samantha','Catherine'),
              State=c('Alaska','California','Texas','North Carolina','California','Texas',
                      'Alaska','Texas','North Carolina','Alaska','California','Texas'),
              
              Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
        #creates data frame table 

aggregate(df1$Sales, by=list(df1$State), FUN=sum)
## sorts by grouping adds states tottals up and outputs each state and the sum of their sales
library(dplyr)
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))
## sorts by grouping adds states tottals up and outputs each state and the sum of their sales

####################################################################################
#2
wcp=read.csv('C:/Users/mwoja/Downloads/Rscripts/WorldCupMatches.csv', sep=',', header= TRUE)
head(wcp)
colnames(wcp)
print(ncol(wcp))
print(nrow(wcp))
summary(wcp)
length(unique(wcp $City))
mean(wcp$Attendance)
install.packages("tidyverse")
wcp %>% group_by(Home.Team.Name) %>% summarise(Home.Team.Goals =sum(Home.Team.Goals))
aggregate(Attendance~ Year, wcp, mean)
####################################################################################
#3

library(tidyverse)
library(dplyr)
mb=read.csv('C:/Users/mwoja/Downloads/Rscripts/metabolite.csv', sep=',', header= TRUE)
head(mb)
table(mb$Label)
is.na(mb ) 

dp=is.na(mb$Dopamine)
print(dp)
colnames(mb)
mb%>%drop_na(c4.OH.Pro)
print(mb$c4.OH.Pro)
median(mb$c4.OH.Pro)      
median(mb$c4.OH.Pro, na.rm = TRUE)

