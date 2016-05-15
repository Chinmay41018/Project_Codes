for (i in 1:len){
  x <- mydata2[i,]
  z <- sapply( toString(x), paste0, collapse="")
  p[i] <- z
}