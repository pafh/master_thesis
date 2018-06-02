sd <-read.csv(file="~/Desktop/Full_sample_data.csv",head=TRUE) # survey data file

sd

PEOU <- subset(sd, select = c(1,2,3,4))
PU <- subset(sd, select = c(5, 6, 7))
IE <- subset(sd, select = c(11, 12, 13))
INNO <- subset(sd, select = c(8, 9, 10))
PPC <- subset(sd, select = c(14, 15, 16, 17, 18))
IBUI <- subset(sd, select = c(19, 20, 21))

PEOUavg <- rowMeans(PEOU)
PUavg <- rowMeans(PU)
IEavg <- rowMeans(IE)
INNOavg <- rowMeans(INNO)
PPCavg <- rowMeans(PPC)
IBUIavg <- rowMeans(IBUI)

as.matrix(PEOUavg)
as.matrix(PUavg)
as.matrix(IEavg)
as.matrix(INNOavg)
as.matrix(PPCavg)
as.matrix(IBUIavg)

# Pearson's r correlation
cor.test(PEOUavg, IBUIavg, alternative = c("greater"), method=c("pearson"))  
cor.test(PUavg, IBUIavg, alternative = c("greater"), method=c("pearson")) 
cor.test(IEavg, IBUIavg, alternative = c("greater"), method=c("pearson")) 
cor.test(PPCavg, IBUIavg, alternative = c("less"), method=c("pearson")) 
cor.test(INNOavg, IBUIavg, alternative = c("greater"), method=c("pearson"))
# Kendall's tau correlation
cor.test(PEOUavg, IBUIavg,alternative = c("greater"), method=c("kendall"))  
cor.test(PUavg, IBUIavg,alternative = c("greater"), method=c("kendall"))  
cor.test(IEavg, IBUIavg,alternative = c("greater"), method=c("kendall"))  
cor.test(PPCavg, IBUIavg,alternative = c("less"), method=c("kendall"))  
cor.test(INNOavg, IBUIavg,alternative = c("greater"), method=c("kendall"))  
# Spearman's rho correlation
cor.test(PEOUavg, IBUIavg,alternative = c("greater"), method=c("spearman"))  
cor.test(PUavg, IBUIavg,alternative = c("greater"), method=c("spearman"))  
cor.test(IEavg, IBUIavg,alternative = c("greater"), method=c("spearman"))  
cor.test(PPCavg, IBUIavg,alternative = c("less"), method=c("spearman"))  
cor.test(INNOavg, IBUIavg, alternative = c("greater"), method=c("spearman"))  


glmstat <- lm(IBUIavg ~ PEOUavg+PUavg+IEavg+INNOavg+PPCavg) # OLS regression

summary(glmstat) # Regression results

library("car") # use car package
vif(glmstat) #test for multicolinearity of IV

