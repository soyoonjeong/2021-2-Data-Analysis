library("Ecdat")
View(Ketchup)
select<-table(Ketchup$Ketchup.choice); select
select<-sort(select, decreasing=T)
colorcol= c("red","tomato","dark orange","gold")
barplot(select, main="ketchup 케첩 브랜드 선호도", col= colorcol,xlab="케첩 브랜드명",ylab="명",cex.main=2,cex.lab=2)

