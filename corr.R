corr<-function(specdata,threshold=0){
        #create list of file names
        filesD<-list.files(specdata,full.names = TRUE)
        
        #create empty vector
        dat <- vector(mode = "numeric", length = 0)
        
        for(i in 1:length(filesD)){
                #read in file
                temp<- read.csv(filesD[i],header=TRUE)
                #delete NAs
                temp<-temp[complete.cases(temp),]
                #count the number of observations
                csum<-nrow(temp)
                #if the number of rows is greater than the threshold
                if(csum>threshold){
                        #for that file you find the correlation between nitrate and sulfate
                        #combine each correlation for each file in vector format using the concatenate function 
                        #since this is not a data frame we cannot use rbind or cbind
                        dat<-c(dat,cor(temp$nitrate,temp$sulfate))
                }
                
        }
        
        return(dat)
}

> cr<- corr(specdata, 150)
> head(cr)

cr <- corr(specdata)                
cr <- sort(cr)                
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr(specdata, 129)                
cr <- sort(cr)                
n <- length(cr)                
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr(specdata, 2000)                
n <- length(cr)                
cr <- corr(specdata, 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))

