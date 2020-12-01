indirect_method<-function(j){

sum<-0
theta<-c()

temp1 <- runif(j,min=0,max=2)
theta <- append(theta,temp1)
sum <- sum(theta)	

re_prob<-c()

temp2 <- theta/sum
re_prob <- append(re_prob,temp2)	
re_theta<-sample(theta,j,replace=TRUE,re_prob)

hist(re_theta,xlim=c(0,2),ylim=c(0,1),xlab="",ylab="",prob=T)
abline(0,1/2,col="red")
}




