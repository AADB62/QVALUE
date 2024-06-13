
library("RHRVEasy")
library("tsfeatures")

basePath = "C:/Users/user/Desktop/CEU2/3año/Segundo cuatrimestre/ProyectosII/RHRVEasyTutorial/RHRVEasy-master/RRData"


NSR_DB = file.path(basePath, "normal")
CHF_DB = file.path(basePath, "chf")
NSR_HALF_DB = file.path(basePath, "normal_half")
CHF_HALF_DB = file.path(basePath, "chf_half")

spreadsheetPath = basePath

easyAnalysis = RHRVEasy(
  folders = c(NSR_DB,CHF_DB),
  doextra = TRUE,
  nJobs = 1

)
saveRDS(easyAnalysis,"extra_results.RDS")
print(easyAnalysis)
#easyAnalysisFDR = RHRVEasyStats(easyAnalysis, correctionMethod =  'qvalue')

#pValues = merge(
#  easyAnalysis$stats,
#  easyAnalysisFDR$stats,
#  by = setdiff(names(easyAnalysis$stats), "adj.p.value"),
#  suffixes = c(".bonf", ".fdr")
#)
#Let us compare the p-values obtained with different correction methods
#print(
#  head(
#    pValues[, c("HRVIndex", "p.value", "adj.p.value.bonf", "adj.p.value.fdr")]
#  )
#)

#library(qvalue)
#data(hedenfalk)
#pvalues <- hedenfalk$p
#qobj <- qvalue(p = pvalues)
#pvalues
#head(pvalues)
#head(qobj)
#head(qobj$qvalues)
#head(qobj$pvalues)
#qobj$qvalues
#length(qobj$qvalues)
#length(qobj$pvalues)

