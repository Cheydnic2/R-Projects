#Name: Cheyenne Nicholson
#V Number: V00747316
#Date: 10/24/2019

# Problem 1
#Read in Impulsivity.xlsx by sheet name
library(readxl)
Impulsivity_1 <- read_excel("C:/TempData/Impulsivity.xlsx", sheet = "Site 1")
Impulsivity_2 <- read_excel("C:/TempData/Impulsivity.xlsx", sheet = "Site 2")
Impulsivity_3 <- read_excel("C:/TempData/Impulsivity.xlsx", sheet = "Site 3")
Impulsivity_4 <- read_excel("C:/TempData/Impulsivity.xlsx", sheet = "Site 4")
Impulsivity_5 <- read_excel("C:/TempData/Impulsivity.xlsx", sheet = "Site 5")
#combine sheets names to form one large dataset
Impulsivity <- rbind(Impulsivity_1, Impulsivity_2, Impulsivity_3, Impulsivity_4, Impulsivity_5)

# Problem 2
#Creates histograms of Ages across treatments
ImpulsivityN <- Impulsivity[Impulsivity$TRT=="N", ]#Where treatment is N
ImpulsivityC <- Impulsivity[Impulsivity$TRT=="C", ]#where treatment is C
ImpulsivityL <- Impulsivity[Impulsivity$TRT=="L", ]#where treatment is L
hist(ImpulsivityN$Age)
hist(ImpulsivityC$Age)
hist(ImpulsivityL$Age)

# Problem 3
#Creates histograms of Ages for different gender
ImpulsivityM <- Impulsivity[Impulsivity$Gender=="M", ]#where Gender is Male
ImpulsivityF <- Impulsivity[Impulsivity$Gender=="F", ]#where Gender is Female
hist(ImpulsivityM$Age)
hist(ImpulsivityF$Age)

# Problem 4
#creates boxplots of Impulsivity for each visit time
boxplot(Impulsivity$Imp1)
boxplot(Impulsivity$Imp2)
boxplot(Impulsivity$Imp3)
boxplot(Impulsivity$Imp4)
boxplot(Impulsivity$Imp5)

# Problem 5
#creates Box plots of Impulsivity across treatments
boxplot(ImpulsivityN$Imp1)
boxplot(ImpulsivityC$Imp1)
boxplot(ImpulsivityL$Imp1)
boxplot(ImpulsivityN$Imp2)
boxplot(ImpulsivityC$Imp2)
boxplot(ImpulsivityL$Imp2)
boxplot(ImpulsivityN$Imp3)
boxplot(ImpulsivityC$Imp3)
boxplot(ImpulsivityL$Imp3)
boxplot(ImpulsivityN$Imp4)
boxplot(ImpulsivityC$Imp4)
boxplot(ImpulsivityL$Imp4)
boxplot(ImpulsivityN$Imp5)
boxplot(ImpulsivityC$Imp5)
boxplot(ImpulsivityL$Imp5)

# Problem 6
#Box plots of Impulsivity across gender
boxplot(ImpulsivityM$Imp1)
boxplot(ImpulsivityF$Imp1)
boxplot(ImpulsivityM$Imp2)
boxplot(ImpulsivityF$Imp2)
boxplot(ImpulsivityM$Imp3)
boxplot(ImpulsivityF$Imp3)
boxplot(ImpulsivityM$Imp4)
boxplot(ImpulsivityF$Imp4)
boxplot(ImpulsivityM$Imp5)
boxplot(ImpulsivityF$Imp5)

# Problem 7
#save plots to pdf in same folder as Impulsivity Data Imported from
pdf(file="C:/TempData/Project 7.pdf")

hist(ImpulsivityN$Age)
hist(ImpulsivityC$Age)
hist(ImpulsivityL$Age)

hist(ImpulsivityM$Age)
hist(ImpulsivityF$Age)

boxplot(Impulsivity$Imp1)
boxplot(Impulsivity$Imp2)
boxplot(Impulsivity$Imp3)
boxplot(Impulsivity$Imp4)
boxplot(Impulsivity$Imp5)

boxplot(ImpulsivityN$Imp1)
boxplot(ImpulsivityC$Imp1)
boxplot(ImpulsivityL$Imp1)
boxplot(ImpulsivityN$Imp2)
boxplot(ImpulsivityC$Imp2)
boxplot(ImpulsivityL$Imp2)
boxplot(ImpulsivityN$Imp3)
boxplot(ImpulsivityC$Imp3)
boxplot(ImpulsivityL$Imp3)
boxplot(ImpulsivityN$Imp4)
boxplot(ImpulsivityC$Imp4)
boxplot(ImpulsivityL$Imp4)
boxplot(ImpulsivityN$Imp5)
boxplot(ImpulsivityC$Imp5)
boxplot(ImpulsivityL$Imp5)

boxplot(ImpulsivityM$Imp1)
boxplot(ImpulsivityF$Imp1)
boxplot(ImpulsivityM$Imp2)
boxplot(ImpulsivityF$Imp2)
boxplot(ImpulsivityM$Imp3)
boxplot(ImpulsivityF$Imp3)
boxplot(ImpulsivityM$Imp4)
boxplot(ImpulsivityF$Imp4)
boxplot(ImpulsivityM$Imp5)
boxplot(ImpulsivityF$Imp5)

dev.off()
