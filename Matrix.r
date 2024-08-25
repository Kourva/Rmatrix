#!/usr/bin/env Rscript

# Matrix Generator in R language
# https://github.com/Kourva/Rmatrix

# Main function
main <- function(){
    # Reads Row from user
    cat("\033[1;31m:: Enter row of matrix: \033[m")
        row <- readLines("stdin", n = 1)
    
    # Reads Column from user
    cat("\033[1;31m:: Enter col of matrix: \033[m")
        col <- readLines("stdin", n = 1)

    # Generates empty matrix
    .matrix <- matrix(nrow = as.numeric(row), ncol = as.numeric(col))
    cat("\n")

    # Reads matrix elements from user input
    for (i in 1:nrow(.matrix)) {
        for (j in 1:ncol(.matrix)) {
            cat("\033[1;37m  -> Enter matrix" , as.name(i) , as.name(j) , ": \033[m");
            .matrix[i,j] <- readLines("stdin",n=1);
        }
    }

    # Prints output
    cat("\n\033[1;31m:: Output:\n\n")
    .matrix

}; main()
