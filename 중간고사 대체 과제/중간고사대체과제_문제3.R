apart<-read.csv("C:/Users/soyunjung/서울특별시 공동주택 아파트 정보.csv")
place<-sort(table(apart$주소.시군구.),increasing=T)
#시군구별 아파트 분포
barplot(place, main="서울특별시 내 시군구별 아파트 분포",col= rainbow(length(place)))
pie(place, main="시군구별 아파트 분포",paste(round(place/sum(place)*100,2)), init.angle=90, radius=2)

#분양형태 분포
kind<-sort(table(apart$k.세대타입.분양형태.))
colorcol = c("black","orange red","royal blue","sea green","purple","gold")
summercolor = c("dark red","red","orange red","tomato","coral","light coral","salmon","light salmon","dark salmon")
pie(kind, main="서울특별시 내 아파트 세대타입/분양형태 분포" ,paste(names(kind),"\n",round(kind/sum(kind)*100,2),'%'), radius=2, col=summercolor)
    
#복도유형 분포
hall<-sort(table(apart$k.복도유형)); hall
wintercolor = c("black","midnight blue","navy blue","medium blue","blue","royal blue")
pie(hall, main="서울특별시 내 아파트 복도유형 분포" ,paste(names(hall),"\n",round(kind/sum(hall)*100,2),'%'), radius=1.8, col=wintercolor)

#분양가격 분포
price<-read.csv("C:/Users/soyunjung/주택도시보증공사_전국 신규 민간 아파트 분양가격 동향.csv")
year<-c(2016,2017,2018,2019,2020)
dataseoul <- price%>%filter(지역명=="서울" & 규모구분=="전체"&월==3)
dataseoul <- price%>%filter(지역명=="서울" & 규모구분=="전체")
quantile(dataseoul$분양가격)
boxplot(dataseoul$분양가격, horizontal=TRUE, main="서울특별시 내 아파트의 분양가격 분포",col="goldenrod")
yellowcol= c("lemon chiffon","light goldenrod","yellow","gold","orange")
barplot(dataseoul$분양가격, main="서울특별시 내 아파트의 분양가격 분포",col = yellowcol, ylab="분양가격(천원/m**2)", xlab="연도")

#단지승인일 분포
date<-table(substr(apart$단지승인일,1,4)) #문자열 자르기
step <- unique(substr(apart$단지승인일,1,4)) #중복제거
step<-sort(step); step
barplot(date~step, breaks=seq(1978,2021, by=7), ylab="도수", xlab="단지승인 연도(년)", main="서울특별시 내 아파트 단지승인 연도 분포")
