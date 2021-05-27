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



