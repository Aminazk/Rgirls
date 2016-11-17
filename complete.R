complete <- function(specdata, ID = 1:332) {
        f <- function(i) {
                data = read.csv(paste(specdata, "/", formatC(i, width = 3, flag = "0"), 
                                      ".csv", sep = ""))
                sum(complete.cases(data))
        }
        nobs = sapply(ID, f)
        return(data.frame(ID, nobs))
}

> set.seed(42)
> cc <- complete(specdata, 332:1)
> use <- sample(332, 10)
> print(cc[use, "nobs"])