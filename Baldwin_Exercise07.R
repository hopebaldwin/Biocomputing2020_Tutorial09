# Hope Baldwin 
# Exercise 07 
# October 13, 2020

# Set working directory to where I have the git branch 
setwd("~/biocomputing/Biocomputing2020_Tutorial09")

# 1: Code that replicaes head function in linux

# variable with file 
file = read.table(file="wages.csv",header=TRUE,sep=",") 

# variables to test different numbers of lines to return 
num1<-5;
num2<-10;
num3<-1;

# head function
file[1:num1,]
file[1:num2,]
file[1:num3,]

# 2

# load data from iris.csv
data = read.table(file="iris.csv",header=TRUE,sep=",") 

# print last 2 rows in the last 2 columns to the terminal
rows<-nrow(data)
columns<-ncol(data)
data[(rows-1):rows,(columns-1):columns]

# get the number of observations for each species included in data set 
nrow(data[data$Species=="setosa",])
nrow(data[data$Species=="versicolor",])
nrow(data[data$Species=="virginica",])

# get rows with sepal width > 3.5
data[data$Sepal.Width>3.5,]

# write the data for the species setosa to csv file
setosaDat = data[data$Species=="setosa",]
write.table(setosaDat,"setosa.csv",row.names=FALSE,sep=",")

# calculate mean, min, max for virginica petal lengths
virginicaDat=data[data$Species=="virginica",]
mean(virginicaDat$Petal.Length)
min(virginicaDat$Petal.Length)
max(virginicaDat$Petal.Length)     
