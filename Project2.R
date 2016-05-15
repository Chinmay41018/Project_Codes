for(i in 1:len){
  for(j in 1:4){
    x <- mydata[i,j]
    mydata2[i,j] <- toString(x)
  }
}