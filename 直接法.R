#’¼Ú–@
direct_method<-function(j){
theta<-c()
density<-c()

for(i in 1:j){
	temp1<-runif(1,min=0,max=1)
	temp2<-runif(1,min=0,max=pi)
	temp3<-(1/2)*sin(temp2)
	
	if(temp1<sin(temp2)){
		theta<-append(theta,temp2)
		density<-append(density,temp3)
		}
}

plot(theta,density,xlim=c(0,3),ylim=c(0,0.6))
par(new=T)
hist(theta,xlim=c(0,3),ylim=c(0,0.6),xlab="",ylab="",prob=T)

}













