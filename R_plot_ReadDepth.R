c1_mark <- c(0,1000000,2000000,3000000,4000000,5000000)
c1_lab <- seq(0,5)
c2_mark <- c(1000000,2000000,3000000,4000000)+5600000
c2_lab <- seq(1,4)
c3_mark <- c(1000000,2000000)+5600000+4600000
c3_lab <- seq(1,2)
  
  plot(newcoor,mydata[,i],type='h',main = mycol[i],xlim = c(0,total_length),ylim=c(0,4),xlab="",xaxt = "n",yaxt="n",ylab="normalized depth",xaxs="i",yaxs="i",lwd=0.5,cex.main=0.8)
  axis(side=1, at=c(c1_mark,c2_mark,c3_mark), c(c1_lab,c2_lab,c3_lab),cex.axis=0.6,mgp=c(2, 0.05, 0),tck=-0.03)
  axis(side=2, at=c(0,1,2,3,4), c(0,1,2,3,4),cex.axis=0.6,mgp=c(2, 0.1, 0),tck=-0.03)
  
  abline(v=c(pos1,pos2),col = "red", lwd = 0.5, lty=1)
  abline(h=c(1,2,3),col="gray",lwd=0.5,lty=3)
