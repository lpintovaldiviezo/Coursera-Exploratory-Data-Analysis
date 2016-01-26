x <- rnorm(100)
hist(x)
y <- rnorm(100)
plot(x,y)
par(mar = c(4,4,2,2)) ##Change margins
plot(x,y)
plot(x,y, pch = 2) ##Change symbols
title("scalerplot") ##Add title
text(-2,-2,"test") ##Add a label inside the plot
legend("topleft", "Data", pch = 2) ##Add label
fit <- lm (y~x) ##Add regression line
abline(fit, lwd = 5, col = "blue") ##set line
plot(x,y, xlab = "X axis", ylab = "Y axis", main ="scalerPlot", pch = 20) 
##2 Graph in one canvas
z <- rpois(100,2)
par(mfrow = c(2,1))
plot(x,y,pch = 20)
plot(x,z,pch = 19)
##Color Separate Groups
g <- gl(2,50, labels = c("Male", "Female"))
str(g)
plot(x,y)
plot(x,y, type = "n")##Set the space
points(x[g == "Male"], y[g == "Male"], col = "green")
points(x[g == "Female"], y[g == "Female"], col = "blue")