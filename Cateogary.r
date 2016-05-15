for ( i in 1:len){
  x <- p[i]
  count <- 0
  x_split <- unlist(strsplit(x[1,1],""))
  length_x_split <- length(x_split)
  for (char in 1 : length_x_split){
    if (x_split[char]=="\t"){
      count <- count +1
    }
    if (count == 4){
      break
    }
  }
  char <- char + 1
  cateogary[i,1] <- x_split[char] 
  }