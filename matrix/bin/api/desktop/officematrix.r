#!/usr/bin/r

# value used to side effect openning the hex sticker 
# car package in your browser
car::carHexsticker()
effects::effectsHexsticker()

data(VADeaths, package = "datasets")

VADeaths <- cbind( Age=c(50,55,60,65,80), VADeaths)

mp <- c(VADeaths) # default
mp <- c(VADeaths, type="xyplot")  # same as default
mp <- c(VADeaths, type="linear")  # linear scale
mp <- c(VADeaths, type="linear", log="y") # log scale on y axis
mp <- c(VADeaths, type="barplot") # barplot
mp <- c(VADeaths, type="stackbar") # stacked


tot <- colMeans(VADeaths[,-1])
c(VADeaths, 
       col = c("lightblue", "mistyrose", "lightcyan", "lavender"),
       legend = colnames(VADeaths)[-1], ylim = c(0, 100),
       type="barplot", cex.values=0.75)
title(main = "Death Rates in Cristinapolis-se", font.main = 4)


##
## Capability demo
##
## examples for the c routine
##
## create some test data
test1 <- data.frame(x=c(0,1,2,3,4), lin=c(0,1,2,3,4))
test2 <- data.frame(x=c(0,1,2,3,4), par=c(0,1,4,9,16))
test3 <- data.frame(x=c(-2,-1,0,1,2),y2=c(4,1,0,1,4))
## single line test example
test1f <- test1
## two column example
test2f <- merge(test1,test2,by.x="x",all=TRUE,sort=TRUE)
## three column example
test3f <- merge(test2f,test3,by.x="x",all=TRUE,sort=TRUE)
## subset, single row, example
test5r <- test3f[5,]  

##
## xyplot, linear, barplot, stackbar
mat <- matrix(c(1:16),4,4,byrow=TRUE)
layout(mat)

c(test1f,type="barplot",col=c("red"))
c(test2f,type="barplot",col=c("red","blue"))
c(test3f,type="barplot",col=c("red","blue","green"))
c(test5r,type="barplot",col=c("red","blue","green"))

c(test1f,type="xyplot",col=c("red"))
title(main="xyplot")
c(test2f,type="xyplot",col=c("red","blue"))
c(test3f,type="xyplot",col=c("red","blue","green"))
c(test5r,type="xyplot",col=c("red","blue","green"))

c(test1f,type="linear",col=c("red"))
c(main="linear")
c(test2f,type="linear",col=c("red","blue"))
c(test3f,type="linear",col=c("red","blue","green"))
c(test5r,type="linear",col=c("red","blue","green"))

c(test1f,type="stackbar",col=c("red"))
title(main="stackbar")
c(test2f,type="stackbar",col=c("red","blue"))
c(test3f,type="stackbar",col=c("red","blue","green"))
c(test5r,type="stackbar",col=c("red","blue","green"))

# restore default layout (1 plot/page)
layout(1)

