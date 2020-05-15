#Name: Cheyenne Nicholson
#V Number: V00747316
#Date: 11/19/2019


##########################
#########################
# Part 1
###########################
########################

#create a funtion that outputs the p-value for the one sample t-test when a vector is inputed
set.seed(7)
ss<-matrix(rnorm(10000,0,1),
           nrow=1000,
           ncol=10)

mytest <- function(x) {
  
  return(t.test(x,mu=0)$p.value)
  
}
#create ss and a container for ss
tout1<-rep(0,1000)
tout1<-apply(ss, 1, mytest)#apply text funtion to each row in ss

#what is the ratio of rejection if the significance level is alpha=0.05?
#we use alpha/2 to determine rejection ratios because we are doing a two-tailed t-test
pval1<-tout1[tout1>.025]
rejectratio1<-length(pval1)/1000 #rejection ratio is 973/1000 at alpha=0.05
#alpha=0.1?
pval2<-tout1[tout1>0.05]
rejectratio2<-length(pval2)/1000 # rejection ratio is 952/1000 at alpha=0.05
#alpha=0.01?
pval3<-tout1[tout1>0.005]
rejectratio3<-length(pval3)/1000 #rejection ratio is 998/1000 at alpha=0.005

##########################
#########################
# Part 2
###########################
########################

#Load Sleep data in R
data(sleep)
pdf(file="C:/Project10/Project10histogram.pdf")#export to pdf
hist(sleep$extra,
     main="Distribution of Hours of Extra Sleep",
     xlab="Extra Hours of Sleep")
dev.off()
#The shape of the distribution would be slightly skewed to the right except for an outlier from 2-3hours of sleep due to no data being reported within that interval
mean(sleep$extra)#The center is best described by the mean of 1.54hours of sleep
range(sleep$extra)#The spread of the distribution is from -1.6 to 5.5
#The data appears to have an outlier from 2-3 hours of sleep where there are no samples that fell within that range

#Conduct two-sample t-test to check whether the means of x and y are significantly different.
x<-sleep$extra[1:10]#group 1
y<-sleep$extra[11:20]#group 2
#hypothesis: H0:m_x = m_y Ha:m_x=\= m_y; I will also be testing at alpha=0.05
#test statistic: T because n<30 therefore it is a small sample size
t.test(x, y, var.equal = TRUE)$pvalue
#p-value=0.07919
#decision rule: p-value> alpha/2=0.025 so we reject H0
#conclusion: At alpha=0.05, We can conclude that the mean hours of extra sleep of patients who used the drug is significantly different than the mean hours of sleep of patients who did not use the drug.

#Conduct one-sample t-test to check whether the mean of z is significantly different from 0
z<-x-y #distribution of difference of extra sleep time between group 1 and group 2
#hypothesis: H0:m_z=0 Ha:m_z=\=0; Testing at alpha=0.05
#Test statistic: T because n<30 therefore it is a small sample size
t.test(z,mu=0,var.equal=TRUE)
#p-value=0.0028
#decision rule: p-value<alpha/2=0.025 so we accept H0
#conclusion: At alpha=0.05, We can conclude that the difference of extra sleep time between group 1 and group 2 has a true mean of zero.