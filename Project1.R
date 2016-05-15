for (i in 1:len){
  x<-p[i]
  initial<-0
  count <- 0
  final <- 0
  length_x_split <- 0
  x_split <- unlist(strsplit(x[1,1],""))
  length_x_split <- length(x_split)
  for(char1 in 1:length_x_split){
    initial <- initial+1
    if (is.na(as.numeric(x_split[char1]))){
      break
    }
  }
  for(char1 in 1:length_x_split){
    first <- count
    if (count == 3){
      if (x_split[char1] == 'p') {
        count<- 4
        break}
    }
    if (count == 2){
      if (x_split[char1] == 't') count<- 3
    }
    if (count == 1){
      if (x_split[char1] == 't') count<- 2
    }
    if (count == 0){
      if (x_split[char1] == 'h') count<- 1
    }
    if( first==count) count = 0
    final <- final +1
  }
  final <- final -4 
  q[i,1]<- substr(x[1,1],initial,final)
  
  }
