hist(trees$Height, breaks = 10, col = "orange", main = "Histogram of Tree heights", xlab = "Height Bin")


hist(trees$Height, breaks = 10, col = "orange",  main = "Histogram of Tree heights with Kernal Denisty plot", xlab = "Height Bin", prob = TRUE)


attach(trees)
plot(Girth, Height, main = "Scatterplot of Girth vs Height", xlab = "Tree Girth", ylab = "Tree Height")
abline(lm(Height ~ Girth), col = "blue", lwd = 2)




pairs(trees, main = "Scatterplot matrix for trees dataset")

install.packages("scatterplot3d")

library(scatterplot3d)

attach(trees)
scatterplot3d(Girth, Height, Volume, pch = 20, highlight.3d = TRUE,
              type ="h", main = "3D Scatterplot of trees dataset")




















boxplot(trees, col = c("yellow", "red", "cyan"), main = "Boxplot for trees dataset")


boxplot(trees, col = "orange", notch = TRUE, main = "Boxplot for trees dataset")

plot(Girth, type = "o", col = "red", ylab = "", ylim = c(0, 110),
     main = "Comparison amongst Girth, Height, and Volume of trees")
lines(Height, type = "o", col = "blue")
lines(Volume, type = "o", col = "green")
legend(1, 110, legend = c("Girth", "Height", "Volume"),
        col = c("red", "blue", "green"), lty = 1:1, cex = 0.9)



attach(mtcars)
dotchart(disp, labels = row.names(mtcars), cex = 0.75,
 main = "Displacement for various Car Models", xlab = "Displacement in Cubic Inches")


x<- c(1,2,2,2,3,5,5,5,5,4)
c <-table(x)
c
x
barplot(c, space =1.0)


vol <- c(90,50,100,40,20)
pie(vol)
















