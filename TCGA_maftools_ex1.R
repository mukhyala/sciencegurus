library(TCGAbiolinks)
luad.maf <- GDCquery_Maf("LUAD", pipelines = "mutect2")
luad <- read.maf(maf=luad.maf)
luad
getSampleSummary(luad)
getGeneSummary(luad)
plotmafSummary(maf = luad, rmOutlier = TRUE, addStat = 'median', dashboard = TRUE, titvRaw = FALSE)
oncoplot(maf = luad, top = 10, fontSize = 12)
oncostrip(maf = luad, genes = c('KRAD','EGFR'))