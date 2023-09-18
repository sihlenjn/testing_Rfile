library(ggplot2)

x <- runif(1000)
save(x,file = "data/randomnumbers.RData")

y = 2*x
mydata <-  data.frame(y=y,x=x)
xyplot <- ggplot(mydata,aes(x=x,y=y))+geom_point()
ggsave("output/xyplot.png",xyplot,width = 7,height = 6,dpi = 300)
