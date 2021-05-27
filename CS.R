library(remotes)
library(crqa)
library(entropy)
library(nonlinearTseries)
library(plot3D)
library(SDMTools)
library(tseriesChaos)


library()install_version("PET", "0.5.0")

C1
C3
C5

F1
F3
F5

T7
FT7
TP7





mutual(lorData$x, lag.max = 50)
plot(false.nearest(lorData$x, m = 10, d = 9, t = 0))
plot(false.nearest(lorData$x, m = 10, d = 9, t = 0))

# I Recurrence Quantification Analysis for each of the selected channels


# 1/ Perception Task
rqa(time.series = PeC1, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeC3, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeC5, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeF1, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeF3, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeF5, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)


rqa(time.series = PeT7, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeFT7, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeTP7, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

# 2/ Imagination Task


rqa(time.series = ImC1, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = ImC3, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = ImC5, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = ImF1, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = ImF3, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = ImF5, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)


rqa(time.series = ImT7, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = ImFT7, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = ImTP7, embedding.dim=2, time.lag=1,
    radius=1.2,lmin=2,do.plot=FALSE,distanceToBorder=2)


# II Pairwise Cross Quantification Analysis



crqa_PeC1F1 = crqa(ts1 = PeC1, ts2 = PeF1, delay = 9,
                        embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                        minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                        side = "both") 

crqa_PeC1F3 = crqa(ts1 = PeC1, ts2 = PeF3, delay = 9,
                       embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                       minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                       side = "both") 

crqa_PeC1F5 = crqa(ts1 = PeC1, ts2 = PeF5, delay = 9,
                       embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                       minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                       side = "both") 




crqa_PeC1T7 = crqa(ts1 = PeC1, ts2 = PeT7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC1FT7 = crqa(ts1 = PeC1, ts2 = PeFT7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC1TP7 = crqa(ts1 = PeC1, ts2 = PeTP7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 









crqa_PeC3F1 = crqa(ts1 = PeC3, ts2 = PeF1, delay = 9,
                       embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                       minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                       side = "both") 

crqa_PeC3F3 = crqa(ts1 = PeC3, ts2 = PeF3, delay = 9,
                       embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                       minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                       side = "both") 

crqa_PeC3F5 = crqa(ts1 = PeC3, ts2 = PeF5, delay = 9,
                       embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                       minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                       side = "both") 






crqa_PeC3T7 = crqa(ts1 = PeC3, ts2 = PeT7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC3FT7 = crqa(ts1 = PeC3, ts2 = PeFT7, delay = 9,
                    embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_PeC3TP7 = crqa(ts1 = PeC3, ts2 = PeTP7, delay = 9,
                    embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 










crqa_PeC5F1 = crqa(ts1 = PeC5, ts2 = PeF1, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC5F3 = crqa(ts1 = PeC5, ts2 = PeF3, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC5F5 = crqa(ts1 = PeC5, ts2 = PeF5, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 






crqa_PeC5T7 = crqa(ts1 = PeC5, ts2 = PeT7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC5FT7 = crqa(ts1 = PeC5, ts2 = PeFT7, delay = 9,
                    embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_PeC5TP7 = crqa(ts1 = PeC5, ts2 = PeTP7, delay = 9,
                    embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 









crqa_PeF1T7 = crqa(ts1 = PeF1, ts2 = PeT7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeF1FT7 = crqa(ts1 = PeF1, ts2 = PeFT7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeF1TP7 = crqa(ts1 = PeF1, ts2 = PeTP7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 





crqa_PeF3T7 = crqa(ts1 = PeF3, ts2 = PeT7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeF3FT7 = crqa(ts1 = PeF3, ts2 = PeFT7, delay = 9,
                    embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_PeF3TP7 = crqa(ts1 = PeF3, ts2 = PeTP7, delay = 9,
                    embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 




crqa_PeF1T7 = crqa(ts1 = PeF5, ts2 = PeT7, delay = 9,
                   embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeF1FT7 = crqa(ts1 = PeF5, ts2 = PeFT7, delay = 9,
                    embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_PeF1TP7 = crqa(ts1 = PeF5, ts2 = PeTP7, delay = 9,
                    embed = 3, rescale = 2, radius = 20, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 



#Prepare MdCRQA


data = cbind(C1, C3, C5, F1,F3,F5,T7,FT7,TP7)
emb =
del =
norm =
rad =

if (exists("data")) {
} else {
  print("No data has been specified")
}

if (exists("emb")) {
} else {
  emb <- 1
}

if (exists("del")) {
} else {
  del <- 1
}

if (exists("norm")) {
} else {
  norm <- "non"
}

if (exists("rad")) {
} else {
  rad <- 1
}

# compute and store parameter settings
dims <- dim(data)[2]
PARAMETERS <- c(dims, emb, del, rad, norm)

# cut data to dims and check whether embedding needs to be performed
data <- data[,1:dims]
if (emb > 1) {
  newLength <- dim(data)[1] - (emb-1)*del
  tempdata <- data[1:newLength,]
  for (i in seq(2,emb)) {
    tempdata <- cbind(tempdata,data[(1+(del*(i-1))):(newLength+del*(i-1)),])
  }
  data <- tempdata
  rm(tempdata)
}

# create distance matrix
RP <- as.matrix(abs(dist(data, diag = T, upper = T))*-1)

# apply norm, radius and threshold matrix
if (norm == "euc") {
  RP <- RP/abs(sum(RP)/(dim(RP)[1]^2-dim(RP)[1]))
} else if (norm == "min") {
  RP <- RP/abs(min(RP))
} else if (norm == "max") {
  RP <- RP/abs(max(RP))
} else {
}

RP <- RP + rad
RP <- ifelse(RP < 0, 0, 1)

# calculate diagonal and vertical line distributions
diag(RP) <- 0
diagLine <- split(RP,row(RP) - col(RP))
diagHist <- 0
for (i in seq(1,(dim(RP)[1]-1)*2)) {
  diagHist <- append(diagHist,tabulate(ConnCompLabel(as.numeric(unlist(diagLine[i])))))
}
diagHist <- diagHist[!diagHist %in% 0]

diag(RP) <- 1
vertLine <- split(RP,col(RP))
vertHist <- 0
for (i in seq(1,(dim(RP)[1]-1)*2)) {
  vertHist <- append(vertHist,tabulate(ConnCompLabel(as.numeric(unlist(vertLine[i])))))
}
vertHist <- vertHist[!vertHist %in% 0]

# calculate MdRQA outplut
diag(RP) <- 0
RESULTS <- dim(RP)[1] # size of RP
RESULTS[2] <- 100*sum(RP)/(dim(RP)[1]^2 - dim(RP)[1]) # percent recurrence
RESULTS[3] <- 100*sum(diagHist[!diagHist %in% 1])/sum(diagHist) # percent determinism
RESULTS[4] <- mean(diagHist[!diagHist %in% 1]) # average diagonal line
RESULTS[5] <- max(diagHist) # maximum diagonal line
RESULTS[6] <- entropy(diagHist[!diagHist %in% 1]) # diagonal line entropy
RESULTS[7] <- 100*sum(vertHist[!vertHist %in% 1])/sum(vertHist) # percent laminarity
RESULTS[8] <- mean(vertHist[!vertHist %in% 1]) # average vertical line
RESULTS[9] <- max(vertHist) # maximum vertical line
RESULTS[10] <- entropy(vertHist[!vertHist %in% 1]) # vertical line entropy
diag(RP) <- 1
RP = Matrix(RP, sparse = TRUE)

output <- list(SizeRP = RESULTS[1], REC = RESULTS[2], DET = RESULTS[3], ADL = RESULTS[4], MDL = RESULTS[5], DENTR = RESULTS[6], LAM = RESULTS[7], AVL = RESULTS[8], MVL = RESULTS[9], VENTR = RESULTS[10], DIM = PARAMETERS[1], EMB = PARAMETERS[2], DEL = PARAMETERS[3], RAD = PARAMETERS[4], NORM = PARAMETERS[5], RP = RP)

return(output)
}