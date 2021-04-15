x<-ChickWeight[34,2]
x
y<-ChickWeight[34,1]
y
plot(x,y)


a<-split(ChickWeight,ChickWeight$Diet)
a
boxplot(a[[4]][,2])
boxplot(ChickWeight$Time~ChickWeight$Diet)


a<-split(ChickWeight,ChickWeight$Diet)
m<-tapply(a[[4]][,1], INDEX=a[[4]][,2], FUN=mean)
m
plot(m)


n<-tapply(a[[2]][,1], INDEX=a[[2]][,2], FUN=mean)
n
o<-rbind(m,n)
plot(c(o[1,],o[2,]))




setm<-c(1,2,3,4,5)
setn<-c(6,7,8,9)

disjnt<-function(seta,setb)
   {
         if(is.null(intersect(setm,setn)))
           {
              setm
           }
        else { setn 
        }
  }
 disjnt(setm,setn)
 
 
 


 

 install.packages("magrittr")
 install.packages("dplyr") 
 install.packages('ggplot2')
 
 library(ggplot2)
 library(magrittr)
 library(dplyr)
 d =  ChickWeight
d 
new_data = d %>% filter(Chick == 34)
new_data



new_data2 = d %>% filter(d$Diet ==4)
 new_data2

box_1 = ggplot(d = new_data2, aes(x = Diet, y = Time)) + geom_boxplot(aes(fill = Time)) + labs(x = "Diet", y ='Time')
box_1 


new_data3 = d %>% filter(d$Chick == 4)
new_data3


mean(new_data3$weight)

plot(rep(mean(new_data3$weight),12), new_data3$Time)



n<-tapply(a[[2]][,1], INDEX=a[[2]][,2], FUN=mean)
n
o<-rbind(m,n)
plot(c(o[1,],o[2,]))
