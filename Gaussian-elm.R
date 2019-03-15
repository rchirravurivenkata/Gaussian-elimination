######################################################################################################################################
#
# Gaussian Elimination R code
#                    by Ramakanth Chirravuri Venkata
# 
#######################################################################################################################################

## The below function needs an input as numbers or as matrix. 
## If provided as numbers, please specify total number of columns using total_columns argument, and if the numbers are intended to be rowwise, please use the ByRow argument.
## If needed, you can flag the partial pivoting and row scaling using the optional arguments.

Gaussian_elm <- function(num_or_matrix,total_columns = 0, ByRow= F, rowScaling = FALSE, partialPivoting= FALSE){
  if(total_columns != 0){
    len = length(c(num_or_matrix))
    mat_left <- mat[nrow(mat), nrow(mat)]
    mat<- matrix(c(num_or_matrix), ncol = total_columns , byrow = ByRow)}
  if(total_columns == 0){
    mat <- num_or_matrix
    if(ByRow == T){
      mat <- t(mat)
    }}
  
  ## Pivot identification 
  
  for (i in 1:nrow(mat)){
    pos <- mat[i, i]
    
    j <- i+1 
    idx <- diag(mat)
    if((nrow(mat) -  i) >= 1){  
      if(partialPivoting == TRUE) {
        new_piv <- which(mat[, i] == max(mat[i:nrow(mat), i]))
        if(length(new_piv) > 1){
          new_piv <- new_piv[1]}
        temp <- mat[i, ]
        mat[i, ] <- mat[new_piv, ]
        mat[new_piv,] <- temp
        
        if(rowScaling == TRUE){
          mat[i, ] <- mat[i, ]/mat[i, i]}
        idx <- diag(mat)}
      
      else if (idx[i] == 0){
        zeropivot <- mat[i, ]
        mat[i, ] <- mat[j, ]
        mat[j, ] <- zeropivot
        idx <- diag(mat)
        
        if(rowScaling == TRUE){
          mat[i, ] <- mat[i, ]/mat[i,i]}
      }
      
      
      ## Performs row operations on the rows below the pivot (of a particular column)
      
      for (k in j:nrow(mat)){
        if(mat[k,i] == 0){
          mat[k, ] <- mat[k, ]}
        else{ facter <- mat[k, i]/idx[i]
        mat[k, ] <- mat[k, ] - (facter *(mat[i,]))
        }}}}
  mat1 <- mat
  print(noquote(" **********************************The Result ****************************************************   "))
  print(noquote("                                                                                         "))
  for(i in nrow(mat):1){
    idx <- diag(mat)
    if(mat[i, i] == 0){
      print(noquote(" *********************************************************************************************                                                    "))
      print(noquote("                                                                                         "))
      print(paste("Value of the variable x", i, " has no unique solution", sep =""))
      print(noquote("                                                                                         "))
    }
    
    ## Calculates and prints the value of the variables
    
    else{
      b <- (mat[i, ncol(mat)]-sum(mat[i, -c(i, ncol(mat))]))/mat[i,i]}
    if(i > 1){
      mat[1:(i-1), i] <- b*  mat[1:(i-1), i]}
    print(noquote("                                                                                         "))
    print(paste("Value of the variable x", i,": ", b, sep = ""))
    print(noquote("                                                                                         "))
    print(noquote(" ************************************************************************************************                                                                    "))
  } 
  print(noquote("                                                                                         "))
  print(noquote("               *********** The matrix is returned *************                                              "))
  print(noquote("                                                                                         "))
  print(noquote("                                                                                         "))
  return(mat1) }



