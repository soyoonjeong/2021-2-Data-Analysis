library("DAAG")
minimum = carprice$Min.Price
quantile(minimum)
boxplot(minimum, main="베이직 모델의 가격",horizontal=TRUE, col= "lemon chiffon")

middle = carprice$Price
quantile(middle)
boxplot(middle, main="중간 모델의 가격",horizontal=TRUE, col= "light goldenrod")

maximum = carprice$Max.Price
quantile(maximum)
boxplot(maximum, main="프리미엄 모델의 가격",horizontal=TRUE, col= "gold")
