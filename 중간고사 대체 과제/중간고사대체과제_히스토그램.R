library("texmex")
View(summer)
summercolor = c("dark red","red","orange red","tomato","coral","light coral","salmon","light salmon","dark salmon")
wintercolor = c("midnight blue","navy blue","medium blue","blue","royal blue")
hist(summer$O3, breaks = seq(0,90,by=10),col= summercolor,main="여름의 최대 오존농도",xlab="일일 최대 오존(ppb)",ylab="일",ylim = c(0,250),cex.main=2,cex.lab=2)
hist(winter$O3, breaks = seq(0,90,by=10),col= wintercolor,main="겨울의 최대 오존농도",xlab="일일 최대 오존(ppb)",ylab="일",ylim = c(0,250),cex.main=2,cex.lab=2)

