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


signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_female_listerhooded_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_1lh <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_1lh <- diff(signal_1lh, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_female_listerhooded_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_5lh <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_5lh <- diff(signal_5lh, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_female_listerhooded_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_9lh <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_9lh <- diff(signal_9lh, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_female_listerhooded_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_13lh <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_13lh <- diff(signal_13lh, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/velocity_female_listerhooded_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_17lh <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_17lh <- diff(signal_17lh, difference =1)




###########################################################################################################


signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_female_longevans_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_2le <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_2le <- diff(signal_2le, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_female_longevans_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_6le <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_6le <- diff(signal_6le, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_female_longevans_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_10le <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_10le <- diff(signal_10le, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_female_longevans_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_14le <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_14le <- diff(signal_14le, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/velocity_female_longevans_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_18le <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_18le <- diff(signal_18le, difference =1)




###########################################################################################################



signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_female_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_3sd <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_3sd <- diff(signal_3sd, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_female_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_7sd <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_7sd <- diff(signal_7sd, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_female_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_11sd <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_11sd <- diff(signal_11sd, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_female_spraguedawley_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_15sd <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_15sd <- diff(signal_15sd, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/velocity_female_spraguedawley_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_19sd <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_19sd <- diff(signal_19sd, difference =1)



###########################################################################################################

signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_female_wistar_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_4w <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_4w <- diff(signal_4w, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_female_wistar_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_8w <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_8w <- diff(signal_8w, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_female_wistar_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_12w <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_12w <- diff(signal_12w, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_female_wistar_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_16w <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_16w <- diff(signal_16w, difference =1)




signal = readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/velocity_female_wistar_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_20w <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_20w <- diff(signal_20w, difference =1)


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


res <- movpotential_ews(signal_1lh, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_01 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_2le, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_02 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_3sd, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_03 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_4w, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_04 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



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


res <- movpotential_ews(signal_5lh, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_05 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_6le, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_06 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_7sd, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_07 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_8w, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_08 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )





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


res <- movpotential_ews(signal_9lh, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_09 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_10le, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)

p <- res[["plot"]] + theme_bw() 
g_10 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_11sd, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_11 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_12w, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_12 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )




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


res <- movpotential_ews(signal_13lh, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_13 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_14le, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_14 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_15sd, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_15 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_16w, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_16 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  FIFTH ROW
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################


res <- movpotential_ews(signal_17lh, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_17 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_18le, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_18 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_19sd, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_19 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_20w, param = NULL, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 3.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_20 <- p +
  labs(title = element_blank(),x = element_blank(), y = element_blank()) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )





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








plot <- plot_grid(g_01, g_02 ,g_03, g_04, g_05, g_06 , g_07, g_08, g_09, g_10 ,g_11, g_12, g_13, g_14, g_15, g_16+ theme(panel.border = element_rect(colour = "black")),
                  align = "hv",labels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"),
                  nrow = 4, ncol=4)




#create common x and y labels

y.grob <- textGrob("State variable", 
                   gp=gpar(fontface="bold", col="black", fontsize=15), rot=90)

x.grob <- textGrob("Time",
                   gp=gpar(fontface="bold", col="black", fontsize=15))

#add to plot

g <- grid.arrange(arrangeGrob(plot, left = y.grob, bottom = x.grob))



ggsave("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task1/set_main/female_standardized_v4.png", g, width = 40, height = 40, units = "cm")












