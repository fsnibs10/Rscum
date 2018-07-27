setwd("D:/tmp/ordered_binsimilarity")
rm(list=ls())
library(gplots)

anno1 <- t(as.vector(read.table("../anno_color_line1.txt",sep="\t",header = T,stringsAsFactors = F)))
allfiles <- list.files(".",pattern = "*.txt")

#pdf("diffnum_inbin_hist3.pdf")
#par(mfrow=c(4,2))

pdf("heatmap_2.pdf",paper = "a4r",width =15)

for (i in 1:length(allfiles)){
  ifile <- allfiles[i]  
  mydata <- read.table(ifile, header = T, sep="\t", stringsAsFactors = F)  
  mytitle <- gsub(".binSimilarity.txt", "", ifile)
  
  myrowname <- mydata[,1]
  mydata2<- mydata[,-1]
  row.names(mydata2) <- myrowname
  
  #hist(as.matrix(mydata2),breaks=100,main=ifile,xlab="different SNP sites in each bin")
  
  mydata3 <- mydata2/200 # observe histgram, 200 may be a cutoff
  mybreaks <- c(0,0.2,0.4,0.6,0.8,1,1.2)
  mycol <- c("red","ivory2","lightskyblue","gold1","blue","black")
  heatmap.2( as.matrix(mydata3),
             dendrogram ="none",trace="none",Colv=F,Rowv=F,
             key=TRUE,key.title=NA,key.xlab=NA,keysize =1,
             key.par=list(mar=c(3,1,2,1)),
             na.color="gray",
             col = mycol,
             symkey=F,breaks = mybreaks,main=mytitle,
             symbreaks=F,density.info='none',
             lwid=c(1, 10),lhei= c(1, 6),
             margins = c(5, 6),cexRow=0.65,cexCol=0.3,
             offsetRow=0.1,ColSideColors = anno1)
  
  legend(x=0.8,y=1.1,xpd=TRUE,legend = c("cent", "feature2", "feature3"),col=c("red","blue","green"),lty=1,lwd=3,cex = 0.5)
 }

dev.off()
