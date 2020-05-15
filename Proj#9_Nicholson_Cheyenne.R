#Name: Cheyenne Nicholson
#V Number: V00747316
#Date: 11/12/2019


#Draw 1000 samples from the following distributions and create histograms for each
#Be sure to comment about each histogram.
#Remember all histograms should have four items addressed (shape, center,spread,unusuals).


##########################
############################
#(a) X ??? N (0, 1) using rnorm function.  (15 pts)
########################
###########################

#set seed
set.seed(3)
a<-rnorm(1000, mean=0,sd=1)

pdf(file="C:/Project9/Project9a.pdf")#export to pdf
hist(a,
     main="Normal Distribution of 1000 generated samples",
     xlab="Y",
     ylab="Frequency")
dev.off()
summary(a)
  #The shape of the distribution is a bell curve
  #The center is about 0 zero.
  range(a)#The spread is from -3.056328 to 3.519299
  #There are two points outside of 3 standard deviations from the mean of 0: 3.2005 and 3.5192

#########################
#########################
#(b)X ??? Gamma(2, 3) using the rgamma function. (15 pts)
########################
#########################
  
  #set seed
  set.seed(4)
b<-rgamma(1000,shape=2,scale=3)
b1<-data.frame(b)

pdf(file="C:/Project9/Project9b.pdf")#export to pdf
hist(b,
     main="Gamma Distribution of 1000 generated samples",
     xlab="Y",
     ylab="Frequency")
dev.off()
summary(b)
  #The shape of the distribution is skewed right
  #The center of the distribution is best estimated using the median because it is skewed right in shape so the center is about 5.02923
  range(b)  #The spread is from 0.1001143 to 35.3630545
  #There is not anything unusual about this distribution

#######################################
######################################
#(c)X+Y where X ??? N(5,2) and Y ??? chi^2(15).  (15 pts)
#######################################
##########################################
  
  #set a seed
set.seed(5)
c1<-rnorm(1000,mean=5,sd=sqrt(2))
c2<-rchisq(1000,15)
c<-c1+c2

pdf(file="C:/Project9/Project9c.pdf")#export to pdf
hist(c,
     main="X+Y: X ??? N(5,2) and Y ??? chi^2(15)",
     xlab="X+Y",
     ylab="Frequency")
dev.off()
summary(c)
  #The shape of the distribution is skewed right
  median(c)#The center of the distribution is best estimated using the median because it is skewed right in shape so the center is about 19.64065.
  #The spread is from 3.974 to 82.877
  #The data does have outliers.I am choosing to define outliers as any values outside of the interval [Q1-1.5*IQR,Q3-1.5*IQR].This data set prduces quite a few

#################################
######################################
#(d) X ??? Binomial(1, 0.3).  (15 pts) 
#######################################
#########################################
  #set seed
set.seed(6)
d<-rbinom(1000,1,0.3)

pdf(file="C:/Project9/Project9d.pdf")#export to pdf
hist(d,
     main="X ??? Binomial(1, 0.3)",
     xlab="X",
     ylab="Frequency")
dev.off()
summary(d)
  #The shape of the distribution is bimodal at X=0 and X=1
  #The data is centered at 0 and 1
  #The spread of the data is from 0 to 1 and there are only integers
  #The data does not have any outliers

##########################
##########################
#(e) Calculate a mean of a vector X = (X1, X2, ..., Xn ) 1000 times, where Xi ~ Binomial(1, 0.4) for n = 2, 5, 10, 20, 50, 100 and create a histogram of the means(35 pts).
#########################
########################

#create container for n=2
X<-rep(0,2)
#set for loop
for(i in 1:2){
      X[i]<-mean(rbinom(1000,1,0.4)) }
pdf(file="C:/Project9/Project9e2.pdf")#export to pdf
hist(X,
     main="Mean of X ??? Binomial(1, 0.4); n=2",
     xlab="Mean",
     xlim=c(0,1))
dev.off()
#The shape of the distribution is bimodal at X=0 and X=1
#The data is centered at 0 and 1
#The spread of the data is from 0 to 1 and there are only integers
#The data does not have any outliers

#create container for n=5
Y<-rep(0,5)
#set for loop
for(i in 1:5){
  Y[i]<-mean(rbinom(1000,1,0.4)) }
pdf(file="C:/Project9/Project9e5.pdf")#export to pdf
hist(Y,
     main="Mean of X ??? Binomial(1, 0.4);n=5",
     xlab="Mean",
     xlim=c(0,1))
dev.off()
#The shape of the distribution is slightly skewed to the left
median(Y)#The center is best described by the median of 0.404
range(Y)#The spread of the distribution is from 0.371 to 0.419
#The data does not appear to have any outliers

#create container for n=10
Z<-rep(0,10)
#set for loop
for(i in 1:10){
  Z[i]<-mean(rbinom(1000,1,0.4)) }
pdf(file="C:/Project9/Project9e10.pdf")#export to pdf
hist(Z,
     main="Mean of X ??? Binomial(1, 0.4);n=10",
     xlab="Mean",
     xlim=c(0,1))
dev.off()
#The shape of the distribution would be slightly skewed to the right except for an outlier at 0.359
mean(Z)#The center is best described by the mean of 0.3902
range(Z)#The spread of the distribution is from 0.359 to 0.415
#The data appear to have an outlier at mean=0.359.

#create container for n=20
A<-rep(0,20)
#set for loop
for(i in 1:20){
  A[i]<-mean(rbinom(1000,1,0.4)) }
pdf(file="C:/Project9/Project9e20.pdf")#export to pdf
hist(A,
     main="Mean of X ??? Binomial(1, 0.4);n=20",
     xlab="Mean",
     xlim=c(0,1))
dev.off()
#The shape of the distribution would be slightly skewed to the right
median(A)#The center is best described by the median of 0.405
range(A)#The spread of the distribution is from 0.371 to 0.425
#The data does not appear to have any outliers

#create container for n=50
B<-rep(0,50)
#set for loop
for(i in 1:50){
  B[i]<-mean(rbinom(1000,1,0.4)) }
pdf(file="C:/Project9/Project9e50.pdf")#export to pdf
hist(B,
     main="Mean of X ??? Binomial(1, 0.4);n=50",
     xlab="Mean",
     xlim=c(0,1))
dev.off()
#The shape of the distribution is bell curved
mean(B)#The center is best described by the mean of 0.3991
range(B)#The spread of the distribution is from 0.361 to 0.438
#The data does not appear to have any outliers

#create container for n=100
C<-rep(0,100)
#set for loop
for(i in 1:100){
  C[i]<-mean(rbinom(1000,1,0.4)) }
pdf(file="C:/Project9/Project9e100.pdf")#export to pdf
hist(C,
     main="Mean of X ??? Binomial(1, 0.4);n=10",
     xlab="Mean",
     xlim=c(0,1))
dev.off()
#The shape of the distribution is bell curved
mean(C)#The center is best described by the mean of 0.40025
range(C)#The spread of the distribution is from 0.366 to 0.440
#The data does not appear to have any outliers


#Comments for part(e)
#The mean of each binomial distribution simulation has a mean about 0.4 and creates a bell curve centered about the probability of X
#As n approached infinity the distribution of the means of the samples will be in the shape of a bell curve centered around 0.4


