#' loadExcelData
#'
#' This loads the data from an Excel csv file, parses the data, and
#' returns a dataframe.
#'
#' @param workbookPath A string containing the path to an Excel csv file
#' @param iDigits The number of digits (integer) to keep in height data. Default is 5.
#'
#' @return a dataframe
#'
#' @export
#'
#' @examples
#' # not run
loadExcelData<- function(workbookPath, iDigits=5){
  df <- read.csv(workbookPath, header=TRUE, as.is=TRUE)
  df <- df[complete.cases(df),]

  sId <- df[,1]
  sLo <- df[,1]
  sFe <- df[,1]
  sJp <- df[,1]
  for(i in 1:nrow(df)){
    x <- df[i,1]
    b <- cleanLocation(x)
    df[i,1] <- b
    b <- unlist(strsplit(b, " "))
    sId[i] <- b[1]
    sLo[i] <- b[2]
    sFe[i] <- b[3]
    sJp[i] <- paste0(x,".jpg")
  }

  dfParsed <- data.frame(sample.id=sId,
                         sample.loc=sLo,
                         sample.fea=sFe,
                         mean.line.ht.um=df[,2],
                         max.pt.um=df[,3],
                         mean.calc.ht.um=df[,4],
                         jpg=sJp)
  dfParsed
}
