library(rEDM)

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


#Load data for Multivariate

mPeC = read.csv(file = "MWdata/CS-Project/PeC135.csv")


mPeF = read.csv(file = "MWdata/CS-Project/PeF13.csv")

mPeT = read.csv(file = "MWdata/CS-Project/PeT7FTTP.csv")




mIC = read.csv(file = "MWdata/CS-Project/C135.csv")

mIF = read.csv(file = "MWdata/CS-Project/F13.csv")

mIT = read.csv(file = "MWdata/CS-Project/T7FTTP.csv")




#   CHANNEL C1

#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of C1 is normalized
PeC1 <- as.numeric(scale(PeC1))


simp_PeC1 <- simplex(PeC1, E=1:10, silent = T)
plot(simp_PeC1$E, simp_PeC1$mae, type="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_C1 <- simp_PeC1[which.min(simp_PeC1$mae),"E"]
bestE_C1 



# C1 univariate simplex projection 


simp_PeC1 <- simplex(PeC1, E=bestE_C1, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
C1_pred_uni <- simp_PeC1[[1]]$model_output$pred
C1_obs_uni <- simp_PeC1[[1]]$model_output$obs
simp_PeC1




# C1 Multivariate
Embedding <- c(1,2,3)
block <- mPeC[,Embedding]

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)



block <- as.data.frame(apply(block, 2, function(x) (x-mean(x))/sd(x)))

#Multivariate - Type 1 


mult_simp_C1 <-  block_lnlp(block[data_used,], method = "simplex", lib = lib_point, pred = pred_point,
                            stats_only = F, silent = T)







#   CHANNEL C3



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of C3 is normalized
PeC3 <- as.numeric(scale(PeC3))


simp_PeC3 <- simplex(PeC3, E=1:10, silent = T)
plot(simp_PeC3$E, simp_PeC3$mae, type="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_C3 <- simp_PeC3[which.min(simp_PeC3$mae),"E"]
bestE_C3 



# C3 univariate simplex projection 


simp_PeC3 <- simplex(PeC3, E=bestE_C3, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
C3_pred_uni <- simp_PeC3[[1]]$model_output$pred
C3_obs_uni <- simp_PeC3[[1]]$model_output$obs
simp_PeC3




















#   CHANNEL C5



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of C5 is normalized
PeC5 <- as.numeric(scale(PeC5))


simp_PeC5 <- simplex(PeC5, E=1:10, silent = T)
plot(simp_PeC5$E, simp_PeC5$mae, type="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_C5 <- simp_PeC5[which.min(simp_PeC5$mae),"E"]
bestE_C5 



# C5 univariate simplex projection 


simp_PeC5 <- simplex(PeC5, E=bestE_C5, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
C5_pred_uni <- simp_PeC5[[1]]$model_output$pred
C5_obs_uni <- simp_PeC5[[1]]$model_output$obs
simp_PeC5
















#   CHANNEL F1



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of F1 is normalized
PeF1 <- as.numeric(scale(PeF1))


simp_PeF1 <- simplex(PeF1, E=1:10, silent = T)
plot(simp_PeF1$E, simp_PeF1$mae, type="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_F1 <- simp_PeF1[which.min(simp_PeF1$mae),"E"]
bestE_F1 



# F1 univariate simplex projection 


simp_PeF1 <- simplex(PeF1, E=bestE_F1, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
F1_pred_uni <- simp_PeF1[[1]]$model_output$pred
F1_obs_uni <- simp_PeF1[[1]]$model_output$obs
simp_PeF1














#   CHANNEL F3



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of F3 is normalized
PeF3 <- as.numeric(scale(PeF3))


simp_PeF3 <- simplex(PeF3, E=1:10, silent = T)
plot(simp_PeF3$E, simp_PeF3$mae, type="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_F3 <- simp_PeF3[which.min(simp_PeF3$mae),"E"]
bestE_F3 



# F3 univariate simplex projection 


simp_PeF3 <- simplex(PeF3, E=bestE_F3, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
F3_pred_uni <- simp_PeF3[[1]]$model_output$pred
F3_obs_uni <- simp_PeF3[[1]]$model_output$obs
simp_PeF3












#   CHANNEL T7



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of T7 is normalized
PeT7 <- as.numeric(scale(PeT7))


simp_PeT7 <- simplex(PeT7, E=1:10, silent = T)
plot(simp_PeT7$E, simp_PeT7$mae, type="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_T7 <- simp_PeT7[which.min(simp_PeT7$mae),"E"]
bestE_T7 



# T7 univariate simplex projection 


simp_PeT7 <- simplex(PeT7, E=bestE_T7, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
T7_pred_uni <- simp_PeT7[[1]]$model_output$pred
T7_obs_uni <- simp_PeT7[[1]]$model_output$obs
simp_PeT7










#   CHANNEL FT7



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of FT7 is normalized
PeFT7 <- as.numeric(scale(PeFT7))


simp_PeFT7 <- simplex(PeFT7, E=1:10, silent = T)
plot(simp_PeFT7$E, simp_PeFT7$mae, type="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_FT7 <- simp_PeFT7[which.min(simp_PeFT7$mae),"E"]
bestE_FT7 



# FT7 univariate simplex projection 


simp_PeFT7 <- simplex(PeFT7, E=bestE_FT7, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
FT7_pred_uni <- simp_PeFT7[[1]]$model_output$pred
FT7_obs_uni <- simp_PeFT7[[1]]$model_output$obs
simp_PeFT7




#   CHANNEL TP7



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of TP7 is normalized
PeTP7 <- as.numeric(scale(PeTP7))


simp_PeTP7 <- simplex(PeTP7, E=1:10, silent = T)
plot(simp_PeTP7$E, simp_PeTP7$mae, type="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_TP7 <- simp_PeTP7[which.min(simp_PeTP7$mae),"E"]
bestE_TP7 



# TP7 univariate simplex projection 


simp_PeTP7 <- simplex(PeTP7, E=bestE_TP7, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
TP7_pred_uni <- simp_PeTP7[[1]]$model_output$pred
TP7_obs_uni <- simp_PeTP7[[1]]$model_output$obs
simp_PeTP7


















#--------------------------------------------------------------------------------


#IMAGINATION TASK






#   CHANNEL C1

#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of C1 is normalized
IC1 <- as.numeric(scale(IC1))


simp_IC1 <- simplex(IC1, E=1:10, silent = T)
plot(simp_IC1$E, simp_IC1$mae, tyI="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_C1 <- simp_IC1[which.min(simp_IC1$mae),"E"]
bestE_C1 



# C1 univariate simplex projection 


simp_IC1 <- simplex(IC1, E=bestE_C1, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
C1_pred_uni <- simp_IC1[[1]]$model_output$pred
C1_obs_uni <- simp_IC1[[1]]$model_output$obs
simp_IC1




# C1 Multivariate
Embedding <- c(1,2,3)
block <- mIC[,Embedding]

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)



block <- as.data.frame(apply(block, 2, function(x) (x-mean(x))/sd(x)))

#Multivariate - TyI 1 


mult_simp_C1 <-  block_lnlp(block[data_used,], method = "simplex", lib = lib_point, pred = pred_point,
                            stats_only = F, silent = T)







#   CHANNEL C3



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of C3 is normalized
IC3 <- as.numeric(scale(IC3))


simp_IC3 <- simplex(IC3, E=1:10, silent = T)
plot(simp_IC3$E, simp_IC3$mae, tyI="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_C3 <- simp_IC3[which.min(simp_IC3$mae),"E"]
bestE_C3 



# C3 univariate simplex projection 


simp_IC3 <- simplex(IC3, E=bestE_C3, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
C3_pred_uni <- simp_IC3[[1]]$model_output$pred
C3_obs_uni <- simp_IC3[[1]]$model_output$obs
simp_IC3




















#   CHANNEL C5



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of C5 is normalized
IC5 <- as.numeric(scale(IC5))


simp_IC5 <- simplex(IC5, E=1:10, silent = T)
plot(simp_IC5$E, simp_IC5$mae, tyI="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_C5 <- simp_IC5[which.min(simp_IC5$mae),"E"]
bestE_C5 



# C5 univariate simplex projection 


simp_IC5 <- simplex(IC5, E=bestE_C5, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
C5_pred_uni <- simp_IC5[[1]]$model_output$pred
C5_obs_uni <- simp_IC5[[1]]$model_output$obs
simp_IC5
















#   CHANNEL F1



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of F1 is normalized
IF1 <- as.numeric(scale(IF1))


simp_IF1 <- simplex(IF1, E=1:10, silent = T)
plot(simp_IF1$E, simp_IF1$mae, tyI="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_F1 <- simp_IF1[which.min(simp_IF1$mae),"E"]
bestE_F1 



# F1 univariate simplex projection 


simp_IF1 <- simplex(IF1, E=bestE_F1, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
F1_pred_uni <- simp_IF1[[1]]$model_output$pred
F1_obs_uni <- simp_IF1[[1]]$model_output$obs
simp_IF1














#   CHANNEL F3



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of F3 is normalized
IF3 <- as.numeric(scale(IF3))


simp_IF3 <- simplex(IF3, E=1:10, silent = T)
plot(simp_IF3$E, simp_IF3$mae, tyI="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_F3 <- simp_IF3[which.min(simp_IF3$mae),"E"]
bestE_F3 



# F3 univariate simplex projection 


simp_IF3 <- simplex(IF3, E=bestE_F3, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
F3_pred_uni <- simp_IF3[[1]]$model_output$pred
F3_obs_uni <- simp_IF3[[1]]$model_output$obs
simp_IF3












#   CHANNEL T7



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of T7 is normalized
IT7 <- as.numeric(scale(IT7))


simp_IT7 <- simplex(IT7, E=1:10, silent = T)
plot(simp_IT7$E, simp_IT7$mae, tyI="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_T7 <- simp_IT7[which.min(simp_IT7$mae),"E"]
bestE_T7 



# T7 univariate simplex projection 


simp_IT7 <- simplex(IT7, E=bestE_T7, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
T7_pred_uni <- simp_IT7[[1]]$model_output$pred
T7_obs_uni <- simp_IT7[[1]]$model_output$obs
simp_IT7










#   CHANNEL FT7



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of FT7 is normalized
IFT7 <- as.numeric(scale(IFT7))


simp_IFT7 <- simplex(IFT7, E=1:10, silent = T)
plot(simp_IFT7$E, simp_IFT7$mae, tyI="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_FT7 <- simp_IFT7[which.min(simp_IFT7$mae),"E"]
bestE_FT7 



# FT7 univariate simplex projection 


simp_IFT7 <- simplex(IFT7, E=bestE_FT7, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
FT7_pred_uni <- simp_IFT7[[1]]$model_output$pred
FT7_obs_uni <- simp_IFT7[[1]]$model_output$obs
simp_IFT7




#   CHANNEL TP7



#Univariate 

data_used <- 1:5600

lib_point <- c(1,500)

pred_point1 <- c(500,1000)
pred_point2 <- c(1000,1500)
pred_point3 <- c(1500,2000)
pred_point4 <- c(2000,2500)
pred_point5 <- c(2500,3000)
# Time series of TP7 is normalized
ITP7 <- as.numeric(scale(ITP7))


simp_ITP7 <- simplex(ITP7, E=1:10, silent = T)
plot(simp_ITP7$E, simp_ITP7$mae, tyI="l", xlab="E", ylab="MAE")

# Best E = 6
bestE_TP7 <- simp_ITP7[which.min(simp_ITP7$mae),"E"]
bestE_TP7 



# TP7 univariate simplex projection 


simp_ITP7 <- simplex(ITP7, E=bestE_TP7, lib=lib_point, pred=pred_point1, stats_only = F, silent = T)
TP7_pred_uni <- simp_ITP7[[1]]$model_output$pred
TP7_obs_uni <- simp_ITP7[[1]]$model_output$obs
simp_ITP7









