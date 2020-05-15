#Name: Cheyenne Nicholson
#V Number: V00747316
#Date: 11/5/2019

#Read in StoreSales.csv from TempData
StoreSales <- read.csv(file="C:/TempData/StoreSales.csv", header=TRUE)

#Problem 1:Create a scatterplot of revenue versus month with correct titles for the plot. Comment on your plot. What do you observe?

#subset dataset by months using only month and revenue columns
m1<-StoreSales[StoreSales$Month==1,c(2,3)]
m2<-StoreSales[StoreSales$Month==2,c(2,3)]
m3<-StoreSales[StoreSales$Month==3,c(2,3)]
m4<-StoreSales[StoreSales$Month==4,c(2,3)]
m5<-StoreSales[StoreSales$Month==5,c(2,3)]
m6<-StoreSales[StoreSales$Month==6,c(2,3)]
m7<-StoreSales[StoreSales$Month==7,c(2,3)]
m8<-StoreSales[StoreSales$Month==8,c(2,3)]
m9<-StoreSales[StoreSales$Month==9,c(2,3)]
m10<-StoreSales[StoreSales$Month==10,c(2,3)]
m11<-StoreSales[StoreSales$Month==11,c(2,3)]
m12<-StoreSales[StoreSales$Month==12,c(2,3)]
#create a column vector of numbers 1 through 12 and title it "Month" to represent the 12 months in a year
M<-c(1,2,3,4,5,6,7,8,9,10,11,12)
#create a column vector of the Revenue totals for each month
R<-c(sum(m1$Revenue),
               sum(m2$Revenue),
               sum(m3$Revenue),
               sum(m4$Revenue),#not reported from Store ME0003 so results may be inaccurate
               sum(m5$Revenue),#store reported twice from ME0003 for month5 so results may be inaccurate
               sum(m5$Revenue),
               sum(m6$Revenue),
               sum(m7$Revenue),
               sum(m7$Revenue),
               sum(m10$Revenue),
               sum(m11$Revenue),
               sum(m12$Revenue))
#create data frame with column headings "Month" and "RevenueTotal" titled "MonthvRevenue"
MonthvRevenue<-data.frame(Month=M,RevenueTotal=R)
#create scatterplot of MonthvRevenue with correct titles
plot(MonthvRevenue$Month,MonthvRevenue$RevenueTotal,
     xlab="Month",
     ylab="Total Revenue in Dollars",
     main="Revenue VS Month")
#I observe that sales are extremely high in the 12th month of the year compared to other months in the year
#Sales are really low in the 4th month of the year compared to other months

#Problem 2:Create a wide dataset with each row corresponding to a store and the remaining columns are the monthly revenue values

#subset dataset by months using only month and revenue columns
month1<-StoreSales[StoreSales$Month==1,c(1,3)]
month2<-StoreSales[StoreSales$Month==2,c(1,3)]
month3<-StoreSales[StoreSales$Month==3,c(1,3)]
month4<-StoreSales[StoreSales$Month==4,c(1,3)]#Only shows reporting from 13 stores for month 4 and does not show reporting for store ME0003
month5<-StoreSales[StoreSales$Month==5,c(1,3)]#shows two month5 reportings from store ME0003 will create two datasets reflecting each reporting for month five from this store
month6<-StoreSales[StoreSales$Month==6,c(1,3)]
month7<-StoreSales[StoreSales$Month==7,c(1,3)]
month8<-StoreSales[StoreSales$Month==8,c(1,3)]
month9<-StoreSales[StoreSales$Month==9,c(1,3)]
month10<-StoreSales[StoreSales$Month==10,c(1,3)]
month11<-StoreSales[StoreSales$Month==11,c(1,3)]
month12<-StoreSales[StoreSales$Month==12,c(1,3)]

#It seems as if the data was imported incorrectly around the store ME0003
#I will simply document the observation and
#insert in a row for ME0003 for month4 with the revenue value set to not reported,
month4a<-t(c(Store='ME0003',Revenue='Not Reported'))
month4b<-rbind(month4,month4a)
#and create two datasets with one reflecting month5a and month5b where a and b are the two reportings for the month5
month5a<-month5[-c(15),]
month5b<-month5[-c(1),]

#Rename "Revenue Column" in each data frame to give proper heading for merge
names(month1)[2] <- "Revenue Month1"
names(month2)[2] <- "Revenue Month2"
names(month3)[2] <- "Revenue Month3"
names(month4b)[2] <- "Revenue Month4"
names(month5a)[2] <- "Revenue Month5"
names(month5b)[2] <- "Revenue Month5"
names(month6)[2] <- "Revenue Month6"
names(month7)[2] <- "Revenue Month7"
names(month8)[2] <- "Revenue Month8"
names(month9)[2] <- "Revenue Month9"
names(month10)[2] <- "Revenue Month10"
names(month11)[2] <- "Revenue Month11"
names(month12)[2] <- "Revenue Month12"

#lastly: merge datasets by Store to produce wideset dataset
StoreSales1<-merge(month1,month2,by="Store")
StoreSales2<-merge(StoreSales1,month3,by="Store")
StoreSales3<-merge(StoreSales2,month4b,by="Store")
StoreSales4a<-merge(StoreSales3,month5a,by="Store")
StoreSales5a<-merge(StoreSales4a,month6,by="Store")
StoreSales6a<-merge(StoreSales5a,month7,by="Store")
StoreSales7a<-merge(StoreSales6a,month8,by="Store")
StoreSales8a<-merge(StoreSales7a,month9,by="Store")
StoreSales9a<-merge(StoreSales8a,month10,by="Store")
StoreSales10a<-merge(StoreSales9a,month11,by="Store")
StoreSales11a<-merge(StoreSales10a,month12,by="Store")#Create a wide dataset with each row corresponding to a store and the remaining columns are the monthly revenue values (using Month5a values)

StoreSales1<-merge(month1,month2,by="Store")
StoreSales2<-merge(StoreSales1,month3,by="Store")
StoreSales3<-merge(StoreSales2,month4b,by="Store")
StoreSales4b<-merge(StoreSales3,month5b,by="Store")
StoreSales5b<-merge(StoreSales4b,month6,by="Store")
StoreSales6b<-merge(StoreSales5b,month7,by="Store")
StoreSales7b<-merge(StoreSales6b,month8,by="Store")
StoreSales8b<-merge(StoreSales7b,month9,by="Store")
StoreSales9b<-merge(StoreSales8b,month10,by="Store")
StoreSales10b<-merge(StoreSales9b,month11,by="Store")
StoreSales11b<-merge(StoreSales10b,month12,by="Store")#Create a wide dataset with each row corresponding to a store and the remaining columns are the monthly revenue values (using Month5b values)

#Problem 3: Create yearly Summary of revenues for each store
Summary1<-data.frame(t(StoreSales11a[1,]))
Summary1a<-Summary1[-c(1),]
Summary1b<-data.frame(t(Summary1a))
summary(Summary1b)
