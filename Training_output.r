for (i in 6001:10000){
    
    if (cateogary[i,1]=="b"){
      output_test[i-6000,1] <- 0
    }
    if (cateogary[i,1]=="t"){
      output_test[i-6000,1] <- 1
    }
    if (cateogary[i,1]=="e"){
      output_test[i-6000,1] <- 2
    }
    if (cateogary[i,1]=="m"){
      output_test[i-6000,1] <- 3
    }
    

}
