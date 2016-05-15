word_count <- 1

for( i  in 1 :6000){
  y <- q[i,1]
  found <- 0
  count <- 0
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
      
      if(word_count >1){
        for(iter in 1:(word_count-1)){
        if (Words[iter,1]==word){
          Words[iter,2]<- Words[iter,2]+1
          found <- 1
    
            }
        }
      }
      if (found == 0){
        Words[word_count,1]<- word
        Words[word_count,2]<- 1
        word_count <- word_count +1
      }
      found <- 0
    }
    if(y_split[char]== " " && count ==0){
      start <- char+2
      list<- c(y_split[start-1])
      count <- 1
    }
  }
}