#Name: Cheyenne Nicholson
#V Number: V00747316
#Date: 10/17/2019

# 1.  Build an R data frame that contains all of the data in the 'IMG_20170117_120750497.jpg' file.
      #Creating each column as a vector
a1<-c(4,14,18,22,26,34,40,49,58,41,63,73,80,85,95,98,99,105,114,119,128)
b1<-c('F','F','F','F','F','F','F','F','F','F','M','M','M','M','M','M','M','M','M','M','M')
c1<-c('K','K','K','K','K','K','C','C','C','C','K','K','K','K','K','K','K','C','C','C','C')
d1<-c(16.5,14.8,15.1,14.2,16.0,13.3,11.8,14.8,15.4,12.2,14.3,11.2,13.0,16.0,14.7,15.3,14.2,16.4,16.2,16.0,13.5)
e1<-c(15.3,12.2,12.6,16.4,17.4,15.1,11.1,12.7,11.6,18.0,14.8,15.9,16.9,15.9,16.5,13.8,18.1,11.0,14.4,16.7,14.5)
f1<-c(14.3,17.8,12.3,18.3,18.5,15.2,15.8,14.9,13.7,15.8,15.8,19.9,14.9,16.0,12.9,15.2,12.2,15.1,15.8,14.1,11.9)
g1<-c(13.8,15.7,13.0,08.7,07.6,07.4,11.0,13.9,07.6,08.9,08.0,06.8,05.8,10.5,09.9,11.3,10.3,12.2,13.8,08.3,12.7)
      #Putting Vectors into a Data frame titled "Impulsivity" and naming each column
Impulsivity<-data.frame(Subject_Number=a1, Gender=b1, Treatment=c1, Time_1=d1, Time_2=e1, Time_3=f1, Time_4=g1)

# 2.  Create two subsets of the data one for Repoxodin or not (using the subsetting logic) 
      #Create Subset of 'Impulsivity' of Subjects treated with Keflexodin
Impulsivityk <- Impulsivity[Impulsivity$Treatment=="K", ]
      #Create Subset of 'Impulsivity' of Subjects treated with Control
Impulsivityc <- Impulsivity[Impulsivity$Treatment=="C", ]

# 3.  Create two subsets of the data one for Male and one for Female using the subsetting logic  
      #Create Subset of 'Impulsivity' of Male Subjects
Impulsivitym <- Impulsivity[Impulsivity$Gender=="M", ]
      #Create Subset of 'Impulsivity' of Female Subjects
Impulsivityf <- Impulsivity[Impulsivity$Gender=="F", ]

# 4.  Find summaries for each of the five datasets 
      #Basic Summaries for 'Impulsivity' dataset
summary(Impulsivity)
      #Basic Summaries for 'Impulsivityk' dataset
summary(Impulsivityk)
      #Basic Summaries for 'Impulsivityc' dataset
summary(Impulsivityc)
      #Basic Summaries for 'Impulsivitym' dataset
summary(Impulsivitym)
      #Basic Summaries for 'Impulsivityf' dataset
summary(Impulsivityf)

# 5.  Create a new data frame that has the summaries for each of the 5 datasets 
ImpulsivitySummary<-data.frame(summary(Impulsivity),summary(Impulsivityk),summary(Impulsivityc),summary(Impulsivitym),summary(Impulsivityf))

# 6.  Export the data frame containing the summaries into an Excel (.xlsx) format
      #Install Rio package in system to be able to use the rio library
install.packages("rio")
install.formats()
      #Calls 'export' function from Rio library to export data frame "ImpulsivitySummary" into my STAT 321 folder in my OneDrive
library(rio)
export(ImpulsivitySummary,"C:/Users/cheye/OneDrive/Documents/STAT 321/ImpulsivitySummary.xlsx")

