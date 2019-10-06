numside <- function(s) {
        
        sides <- 6 * ncol(combn(c(1:s),2)) * 3
        
        sides
}