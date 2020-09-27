#' Lab 5 func
#'
#' @param num0s 0
#' @param num1s 1
#' @param sampleSize n
#' @param replace r
#'
#' @export
#'
getSample=function(num0s = 5, num1s = 5, sampleSize = 10, replace = TRUE)
{
  v0<-rep(0, num0s)
  v1<-rep(1, num1s)
  sample(x = c(v0, v1), size = sampleSize, replace = replace)
}
