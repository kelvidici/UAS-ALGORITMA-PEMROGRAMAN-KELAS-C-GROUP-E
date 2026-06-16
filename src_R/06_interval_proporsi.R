#06_interval_proporsi.R
# fungsi interval kepercayaan
interval_konfidensi <- function(phat, n, alpha) {
  
  if (alpha == 0.10) {
    
    z <- 1.645
    
  } else if (alpha == 0.05) {
    
    z <- 1.96
    
  } else {
    
    cat("Alpha tidak tersedia")
    return(NULL)
    
  }
  
  margin_error <- z * sqrt((phat * (1 - phat)) / n)
  
  batas_bawah <- phat - margin_error
  batas_atas <- phat + margin_error
  
  return(c(batas_bawah, batas_atas))
}

# input data
phat <- 0.6
n <- 100
alpha <- 0.05

# validasi proporsi
if (phat < 0 || phat > 1) {
  cat("Error: Proporsi harus berada di antara 0 dan 1")
} else {
  
  hasil <- interval_konfidensi(phat, n, alpha)
  
  cat("Interval konfidensi:")
  cat("\n", hasil[1], "< p <", hasil[2])
}
