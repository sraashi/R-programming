ggplot()
d<- read.table("ModelProtein.csv", header= TRUE, sep =',')
p<-ggplot(d, aes(xmin = d[,1], xmax = d[,2], ymin = d[,3], ymax = d[,4], fill = d[,6]), color ="black")+geom_rect(color = "black" )+ ylim(0,20)+scale_fill_discrete(name = "Dataset")
p+geom_text(mapping = aes(x=d[,1]+(d[,2]-d[,1])/2, y=d[,3]+(d[,4]-d[,3])/2, label=d[,5]), size=4)+labs(x="x",y="y", color =d[1,5])
