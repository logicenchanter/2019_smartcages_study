#library(earlywarnings)
library(R.matlab)
library(ggplot2)
library(pracma)
library(plotly)
library(gtable)
library(gridExtra)
library(ggthemes)
library(grid)
library(lattice)
library(cowplot)
library(viridis)
library(zoo)
library(lmtest)
library(identity)
library(aTSA)
library(png)
library(grid)
library(gridExtra)

signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_female_listerhooded_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_1lh <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_1lh <- diff(signal_1lh, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_female_listerhooded_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_5lh <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_5lh <- diff(signal_5lh, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_female_listerhooded_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_9lh <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_9lh <- diff(signal_9lh, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_female_listerhooded_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_13lh <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_13lh <- diff(signal_13lh, difference =1)







###########################################################################################################


signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_female_longevans_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_2le <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_2le <- diff(signal_2le, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_female_longevans_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_6le <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_6le <- diff(signal_6le, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_female_longevans_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_10le <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_10le <- diff(signal_10le, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_female_longevans_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_14le <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_14le <- diff(signal_14le, difference =1)






###########################################################################################################



signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_female_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_3sd <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
#signal_3sd <- diff(signal_3sd, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_female_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_7sd <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
#signal_7sd <- diff(signal_7sd, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_female_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_11sd <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
#signal_11sd <- diff(signal_11sd, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_female_spraguedawley_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_15sd <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
#signal_15sd <- diff(signal_15sd, difference =1)





###########################################################################################################

signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_female_wistar_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_4w <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
#signal_4w <- diff(signal_4w, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_female_wistar_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_8w <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
#signal_8w <- diff(signal_8w, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_female_wistar_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_12w <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
#signal_12w <- diff(signal_12w, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_female_wistar_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_16w <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
#signal_16w <- diff(signal_16w, difference =1)





##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  FIRST ROW
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
generic_ews(signal_1lh, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_01 <- readPNG('Image2.png', native = TRUE, info = TRUE) 




generic_ews(signal_2le, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_02 <- readPNG('Image2.png', native = TRUE, info = TRUE) 





generic_ews(signal_3sd, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_03 <- readPNG('Image2.png', native = TRUE, info = TRUE) 


generic_ews(signal_4w, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_04 <- readPNG('Image2.png', native = TRUE, info = TRUE) 




##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  SECOND ROW
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################


generic_ews(signal_5lh, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_05 <- readPNG('Image2.png', native = TRUE, info = TRUE) 




generic_ews(signal_6le, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_06 <- readPNG('Image2.png', native = TRUE, info = TRUE) 





generic_ews(signal_7sd, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_07 <- readPNG('Image2.png', native = TRUE, info = TRUE) 


generic_ews(signal_8w, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_08 <- readPNG('Image2.png', native = TRUE, info = TRUE)  





##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  THIRD ROW
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################


generic_ews(signal_9lh, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_09 <- readPNG('Image2.png', native = TRUE, info = TRUE)  




generic_ews(signal_10le, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_10 <- readPNG('Image2.png', native = TRUE, info = TRUE) 





generic_ews(signal_11sd, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_11 <- readPNG('Image2.png', native = TRUE, info = TRUE) 


generic_ews(signal_12w, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_12 <- readPNG('Image2.png', native = TRUE, info = TRUE) 


##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  FOURTH ROW
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################


generic_ews(signal_13lh, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_13 <- readPNG('Image2.png', native = TRUE, info = TRUE) 




generic_ews(signal_14le, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_14 <- readPNG('Image2.png', native = TRUE, info = TRUE) 





generic_ews(signal_15sd, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_15 <- readPNG('Image2.png', native = TRUE, info = TRUE) 




generic_ews(signal_16w, winsize = 15, detrending = c("first-diff"), bandwidth = NULL, span = NULL,degree = NULL, logtransform = FALSE, interpolate = FALSE, AR_n = FALSE, powerspectrum = TRUE)
for(d in dev.list()) {
  dev.set(d)
  Name = paste("Image", d, ".png", sep="")
  dev.copy(png, Name, units="in", width=5, height=5, res=900)
  dev.off()
}
dev.off()
g_16 <- readPNG('Image2.png', native = TRUE, info = TRUE) 






##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  ARRANGING THE PLOT
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################








# plot <- plot_grid(rasterGrob(g_01), g_02 ,g_03, g_04, g_05, g_06 , g_07, g_08, g_09, g_10 ,g_11, g_12, g_13, g_14, g_15, g_16+ theme(panel.border = element_rect(colour = "black")),
#                   align = "hv",labels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"),
#                   nrow = 4, ncol=4)

plot <- plot_grid(g_01, g_02 ,g_03, g_04, g_05, g_06 , g_07, g_08, g_09, g_10 ,g_11, g_12, g_13, g_14, g_15, g_16+ theme(panel.border = element_rect(colour = "black")),
                  align = "hv",labels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"),
                  nrow = 4, ncol=4)


plot <- plot_grid(rasterGrob(g_01), rasterGrob(g_02) ,rasterGrob(g_03),rasterGrob(g_04), rasterGrob(g_05), rasterGrob(g_06) , rasterGrob(g_07), rasterGrob(g_08), rasterGrob(g_09), rasterGrob(g_10) ,rasterGrob(g_11), rasterGrob(g_12), rasterGrob(g_13), rasterGrob(g_14), rasterGrob(g_15), rasterGrob(g_16) , NULL+ theme(panel.border = element_rect(colour = "black")),
                  align = "hv",labels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"), nrow = 4, ncol=4)


#create common x and y labels

y.grob <- textGrob("Rolling Windows", 
                   gp=gpar(fontface="bold", col="black", fontsize=15), rot=90)

x.grob <- textGrob("Frequency",
                   gp=gpar(fontface="bold", col="black", fontsize=15))

#add to plot

g <- grid.arrange(arrangeGrob(plot, left = y.grob, bottom = x.grob))



ggsave("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/generic/female_standardized_v3_15.png", g, width = 40, height = 40, units = "cm")












