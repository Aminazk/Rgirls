getwd()
setwd("/Users/Amina/Downloads/specdata")
getwd()
folder <- "~/Downloads/specdata/"
file_list <-list.files(path=folder, pattern="*.csv")
file_list
for (i in 001:332) {assign(file_list[i], read.csv(paste(folder, file_list[i], sep='')))}
View(`001.csv`)
specdata <- "/Users/Amina/Downloads/specdata"
list.files(specdata)
dir()


pm <- function(specdata, sulfate, ID = 1:10) {
        csvFiles <- list.files(pattern="\\.csv")[1:10]  
        file_list <- vector('list', length=length(csvFiles)) 
        df_list <- lapply(X=csvFiles, read.csv, header=TRUE) 
        names(df_list) <- csvFiles 
        df <- do.call("rbind", df_list)
        mean(df[ ,sulfate], na.rm=TRUE) }

pm(specdata, "sulfate", 1:10)

pm2 <- function(specdata, nitrate, ID = 70:72) {
        csvFiles <- list.files(pattern="\\.csv")[70:72]  
        file_list <- vector('list', length=length(csvFiles)) 
        df_list <- lapply(X=csvFiles, read.csv, header=TRUE) 
        names(df_list) <- csvFiles 
        df <- do.call("rbind", df_list)
        mean(df[ ,nitrate], na.rm=TRUE) }

pm2(specdata, "nitrate", 70:72)

pm3 <- function(specdata, sulfate, ID = 34) {
        csvFiles <- list.files(pattern="\\.csv")[34]  
        file_list <- vector('list', length=length(csvFiles)) 
        df_list <- lapply(X=csvFiles, read.csv, header=TRUE) 
        names(df_list) <- csvFiles 
        df <- do.call("rbind", df_list)
        mean(df[ ,sulfate], na.rm=TRUE) }

pm3(specdata, "sulfate", 34)


pm4 <- function(specdata, nitrate, ID = 1:332) {
        csvFiles <- list.files(pattern="\\.csv")[1:332]  
        file_list <- vector('list', length=length(csvFiles)) 
        df_list <- lapply(X=csvFiles, read.csv, header=TRUE) 
        names(df_list) <- csvFiles 
        df <- do.call("rbind", df_list)
        mean(df[ ,nitrate], na.rm=TRUE) }

pm4(specdata, "nitrate", 1:332)