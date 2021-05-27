library(remotes)
library(crqa)
library(entropy)
library(nonlinearTseries)
library(plot3D)
library(SDMTools)
library(tseriesChaos)


library()install_version("PET", "0.5.0")



PeC1 = read.csv(file = "MWdata/CS-Project/PeC1.csv")
PeC1=as.numeric(unlist(PeC1))
PeC3 = read.csv(file = "MWdata/CS-Project/PeC3.csv")
PeC3=as.numeric(unlist(PeC3))
PeC5 = read.csv(file = "MWdata/CS-Project/PeC5.csv")
PeC5 =as.numeric(unlist(PeC5))

PeF1 = read.csv(file = "MWdata/CS-Project/PeF1.csv")
PeF1 =as.numeric(unlist(PeF1))
PeF3 = read.csv(file = "MWdata/CS-Project/PeF3.csv")
PeF3 =as.numeric(unlist(PeF3))


PeT7 = read.csv(file = "MWdata/CS-Project/PeT7.csv")
PeT7 =as.numeric(unlist(PeT7))
PeFT7 = read.csv(file = "MWdata/CS-Project/PeFT7.csv")
PeFT7 =as.numeric(unlist(PeFT7))
PeTP7 = read.csv(file = "MWdata/CS-Project/PeTP7.csv")
PeTP7 =as.numeric(unlist(PeTP7))





IC1 = read.csv(file = "MWdata/CS-Project/IPeC1.csv")
IC1=as.numeric(unlist(IC1))
IC3 = read.csv(file = "MWdata/CS-Project/IPeC3.csv")
IC3=as.numeric(unlist(IC3))
IC5 = read.csv(file = "MWdata/CS-Project/IPeC5.csv")
IC5 =as.numeric(unlist(IC5))


IF1 = read.csv(file = "MWdata/CS-Project/IPeF1.csv")
IF1 =as.numeric(unlist(IF1))
IF3 = read.csv(file = "MWdata/CS-Project/IPeF3.csv")
IF3 =as.numeric(unlist(IF3))
IT7 = read.csv(file = "MWdata/CS-Project/IPeT7.csv")
IT7 =as.numeric(unlist(IT7))
IFT7 = read.csv(file = "MWdata/CS-Project/IPeFT7.csv")
IFT7 =as.numeric(unlist(IFT7))
ITP7 = read.csv(file = "MWdata/CS-Project/IPeTP7.csv")
ITP7 =as.numeric(unlist(ITP7))














mutual(PeC1, lag.max = 50)

#Delay = 12


mutual(PeC3, lag.max = 50)
#Delay = 5

mutual(PeC5, lag.max = 50)
#Delay = 4

mutual(PeF1, lag.max = 50)
#Delay = 4


mutual(PeF3, lag.max = 50)
#Delay = 5


mutual(PeT7, lag.max = 50)
#Delay = 5
mutual(PeFT7, lag.max = 50)
#Delay = 5
mutual(PeTP7, lag.max = 50)
#Delay = 5

plot(false.nearest(PeC1, m = 10, d = 12, t = 0))
#DIm = 4


plot(false.nearest(PeC3, m = 10, d = 5, t = 0))
#DIm = 6
plot(false.nearest(PeC5, m = 10, d = 5, t = 0))
#DIm = 6

plot(false.nearest(PeF3, m = 10, d = 5, t = 0))
#DIm = 5

plot(false.nearest(PeF1, m = 10, d = 5, t = 0))
#DIm = 5

plot(false.nearest(PeT7, m = 10, d = 5, t = 0))
#DIm = 5

plot(false.nearest(PeTP7, m = 10, d = 5, t = 0))
#DIm = 5




mutual(IC1, lag.max = 50)
#Delay = 4

mutual(IC3, lag.max = 50)
#Delay = 6

mutual(IC5, lag.max = 50)
#Delay = 6

mutual(IF1, lag.max = 50)
#Delay = 4
mutual(IF3, lag.max = 50)
#Delay = 4

mutual(IT7, lag.max = 50)
#Delay = 5
mutual(IFT7, lag.max = 50)
#Delay = 4
mutual(ITP7, lag.max = 50)
#Delay = 4

plot(false.nearest(IC1, m = 10, d = 4, t = 0))
#DIm = 2


plot(false.nearest(IC3, m = 10, d = 6, t = 0))
#DIm = 3
plot(false.nearest(IC5, m = 10, d = 6, t = 0))
#DIm = 3

plot(false.nearest(IF3, m = 10, d = 4, t = 0))
#DIm = 2

plot(false.nearest(IF1, m = 10, d = 4, t = 0))
#DIm = 2

plot(false.nearest(IT7, m = 10, d = 5, t = 0))
#DIm = 5

plot(false.nearest(IFT7, m = 10, d = 4, t = 0))
#DIm = 5

plot(false.nearest(ITP7, m = 10, d = 4, t = 0))
#DIm = 2











# I Recurrence Quantification Analysis for each of the selected channels


# 1/ Perception Task
rqa(time.series = PeC1, embedding.dim=4, time.lag=12,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeC3, embedding.dim=6, time.lag=5,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeC5, embedding.dim=6, time.lag=4, radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeF1, embedding.dim=5, time.lag=4,  radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeF3, embedding.dim=5, time.lag=5,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeF5, embedding.dim=5, time.lag=5,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)


rqa(time.series = PeT7, embedding.dim=5, time.lag=5,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeFT7, embedding.dim=5, time.lag=5,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = PeTP7, embedding.dim=5, time.lag=5,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

# 2/ Imagination Task


rqa(time.series = IC1, embedding.dim=2, time.lag=4,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = IC3, embedding.dim=3, time.lag=6,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = IC5, embedding.dim=3, time.lag=6,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = IF1, embedding.dim=2, time.lag=4,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = IF3, embedding.dim=2, time.lag=4,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)



rqa(time.series = IT7, embedding.dim=5, time.lag=5,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = IFT7, embedding.dim=2, time.lag=4,radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)

rqa(time.series = ITP7, embedding.dim=2, time.lag=4, radius=15,lmin=2,do.plot=FALSE,distanceToBorder=2)


# II Pairwise Cross Quantification Analysis



crqa_PeC1F1 = crqa(ts1 = PeC1, ts2 = PeF1, delay = 12,
                        embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                        minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                        side = "both") 

crqa_PeC1F3 = crqa(ts1 = PeC1, ts2 = PeF3, delay = 8,
                       embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                       minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                       side = "both") 






crqa_PeC1T7 = crqa(ts1 = PeC1, ts2 = PeT7, delay = 9,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC1FT7 = crqa(ts1 = PeC1, ts2 = PeFT7, delay = 9,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC1TP7 = crqa(ts1 = PeC1, ts2 = PeTP7, delay = 9,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 









crqa_PeC3F1 = crqa(ts1 = PeC3, ts2 = PeF1, delay = 5,
                       embed = 6, rescale = 2, radius =15, normalize = 2, mindiagline = 2,
                       minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                       side = "both") 

crqa_PeC3F3 = crqa(ts1 = PeC3, ts2 = PeF3, delay = 5,
                       embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                       minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                       side = "both") 




crqa_PeC3T7 = crqa(ts1 = PeC3, ts2 = PeT7, delay = 5,
                   embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC3FT7 = crqa(ts1 = PeC3, ts2 = PeFT7, delay = 5,
                    embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_PeC3TP7 = crqa(ts1 = PeC3, ts2 = PeTP7, delay = 5,
                    embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 










crqa_PeC5F1 = crqa(ts1 = PeC5, ts2 = PeF1, delay = 4,
                   embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC5F3 = crqa(ts1 = PeC5, ts2 = PeF3, delay = 5,
                   embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC5F5 = crqa(ts1 = PeC5, ts2 = PeF5, delay = 5,
                   embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 






crqa_PeC5T7 = crqa(ts1 = PeC5, ts2 = PeT7, delay = 5,
                   embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC5FT7 = crqa(ts1 = PeC5, ts2 = PeFT7, delay = 5,
                    embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_PeC5TP7 = crqa(ts1 = PeC5, ts2 = PeTP7, delay = 5,
                    embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 









crqa_PeF1T7 = crqa(ts1 = PeF1, ts2 = PeT7, delay = 5,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeF1FT7 = crqa(ts1 = PeF1, ts2 = PeFT7, delay = 5,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeF1TP7 = crqa(ts1 = PeF1, ts2 = PeTP7, delay = 5,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 





crqa_PeF3T7 = crqa(ts1 = PeF3, ts2 = PeT7, delay = 5,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeF3FT7 = crqa(ts1 = PeF3, ts2 = PeFT7, delay = 5,
                    embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_PeF3TP7 = crqa(ts1 = PeF3, ts2 = PeTP7, delay = 5,
                    embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 




#Imagination













crqa_IC1F1 = crqa(ts1 = IC1, ts2 = IF1, delay = 4,
                   embed = 2, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 
crqa_IC1F3 = crqa(ts1 = IC1, ts2 = IF3, delay = 4,
                   embed = 2, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 






crqa_IC1T7 = crqa(ts1 = IC1, ts2 = IT7, delay = 5,
                   embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_IC1FT7 = crqa(ts1 = IC1, ts2 = IFT7, delay = 4,
                    embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_IC1TP7 = crqa(ts1 = IC1, ts2 = ITP7, delay = 4,
                    embed = 2, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 









crqa_IC3F1 = crqa(ts1 = IC3, ts2 = IF1, delay = 5,
                   embed = 3, rescale = 2, radius =15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_IC3F3 = crqa(ts1 = IC3, ts2 = IF3, delay = 5,
                   embed = 3, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 




crqa_I3T7 = crqa(ts1 = IC3, ts2 = IT7, delay = 6,
                   embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_IC3FT7 = crqa(ts1 = IC3, ts2 = PeFT7, delay = 5,
                    embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_IC3TP7 = crqa(ts1 = IC3, ts2 = ITP7, delay = 5,
                    embed = 3, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 










crqa_IC5F1 = crqa(ts1 = IC5, ts2 = IF1, delay = 5,
                   embed = 3, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_IC5F3 = crqa(ts1 = IC5, ts2 = IF3, delay = 5,
                   embed = 3, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 






crqa_IC5T7 = crqa(ts1 = IC5, ts2 = IT7, delay = 6,
                   embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_IC5FT7 = crqa(ts1 = IC5, ts2 = IFT7, delay = 5,
                    embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_IC5TP7 = crqa(ts1 = I5, ts2 = ITP7, delay = 5,
                    embed = 3, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 









crqa_IF1T7 = crqa(ts1 = IF1, ts2 = IT7, delay = 5,
                   embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_IF1FT7 = crqa(ts1 = IF1, ts2 = IFT7, delay = 4,
                    embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_IF1TP7 = crqa(ts1 = IF1, ts2 = ITP7, delay = 4,
                    embed = 2, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 





crqa_IF3T7 = crqa(ts1 = IF3, ts2 = IT7, delay = 5,
                   embed =4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_IF3FT7 = crqa(ts1 = IF3, ts2 = IFT7, delay = 4,
                    embed =4 , rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_IF3TP7 = crqa(ts1 = IF3, ts2 = ITP7, delay = 4,
                    embed = 2, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 











#INTRA-LOBE

#Perception

crqa_PeC1C3 = crqa(ts1 = PeC1, ts2 = PeC3, delay = 9,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_PeC1C5 = crqa(ts1 = PeC1, ts2 = PeC5, delay = 8,
                    embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 


             
crqa_PeC3C5 = crqa(ts1 = PeC3, ts2 = PeC5, delay = 5,
                   embed = 6, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 




crqa_PeF1F3 = crqa(ts1 = PeF1, ts2 = PeF3, delay = 5,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 




crqa_PeT7FT7 = crqa(ts1 = PeT7, ts2 = PeFT7, delay = 5,
                   embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 


crqa_PeT7TP7 = crqa(ts1 = PeT7, ts2 = PeFT7, delay = 5,
                    embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_PeTP7FT7 = crqa(ts1 = PeTP7, ts2 = PeFT7, delay = 5,
                    embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 









#Imagination

crqa_IC1C3 = crqa(ts1 = IC1, ts2 = IC3, delay = 5,
                   embed = 3, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 

crqa_IC1C5 = crqa(ts1 = IC1, ts2 = IC5, delay = 5,
                   embed = 3, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 



crqa_IC3C5 = crqa(ts1 = IC3, ts2 = IC5, delay = 6,
                   embed = 3, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 




crqa_IF1F3 = crqa(ts1 = IF1, ts2 = IF3, delay = 4,
                   embed = 2, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                   minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                   side = "both") 




crqa_IT7FT7 = crqa(ts1 = IT7, ts2 = IFT7, delay = 5,
                    embed = 5, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 


crqa_IT7TP7 = crqa(ts1 = IT7, ts2 = IFT7, delay = 5,
                    embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                    minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                    side = "both") 

crqa_ITP7FT7 = crqa(ts1 = ITP7, ts2 = IFT7, delay = 4,
                     embed = 4, rescale = 2, radius = 15, normalize = 2, mindiagline = 2,
                     minvertline = 2, tw = 0, whiteline = FALSE, recpt = FALSE,
                     side = "both") 
