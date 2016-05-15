iter <- 0
for( i in 1:length(Words[,1])){
    if(length(unlist(strsplit(Words[i,1],"")))>3){
       if(Words[i,2]> 5 && Words[i,2] < 100){ 
       iter <- iter +1
       Words_to_use[iter,1] <-Words[i,1]
       }
    }
}