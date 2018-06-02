SurveyData <-read.csv(file="~/Desktop/Full_sample_variables.csv",head=TRUE)

SurveyData

PEOU <- subset(SurveyData, select = c(1, 2, 3, 4))
PU <- subset(SurveyData, select = c(5, 6, 7))
INNO <- subset(SurveyData, select = c(8, 9, 10))
IE <- subset(SurveyData, select = c(11, 12, 13))
PPC <- subset(SurveyData, select = c(14, 15, 16, 17, 18))
IBUI <- subset(SurveyData, select = c(19, 20, 21))

psych::alpha(x = PEOU, check.keys=TRUE)
psych::alpha(x = PU, check.keys=TRUE)
psych::alpha(x = INNO, check.keys=TRUE)
psych::alpha(x = IE, check.keys=TRUE)
psych::alpha(x = PPC, check.keys=TRUE)
psych::alpha(x = IBUI, check.keys=TRUE)