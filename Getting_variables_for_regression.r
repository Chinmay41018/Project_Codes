input_test <- data.frame(matrix(0,nrow=4000,ncol = length(Words_to_use[,1])))
for(i in 6001:10000){
  y <- q[i,1]
  y_split <- unlist(strsplit(y[1],""))
  length_y_split= length(y_split)
  for(char in 1:length_y_split){
    if (y_split[char]==" " && count==1){
      final <- char-1
      count<- 0
      for(number in start:final){
        list <- c(list,y_split[number])
      }
      
      word <- NULL
      for (j in 1:length(list)){
        word<- paste(word,list[j],sep="")
      }
      for (k in 1:length(Words_to_use[,1])){
        if(word==Words_to_use[k,1]){
          input_test[i-6000,k] <- input_test[i-6000,k] + 1
        }
      }
    }
    if(y_split[char]== " " && count ==0){
      start <- char+2
      list<- c(y_split[start-1])
      count <- 1
    }
  }
}