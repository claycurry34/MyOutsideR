#' mybin
#'
#' @param iter number of experiments consisting of n Bernoulli trials
#' @param n number of Bernouilli trials in each experiment
#' @param p probability of obtaining a success on each trial
#'
#' @return
#' a table containing the frequency distribution of a random subset of size
#' 'iter' from the collection of all 'n' Bernouilli trials
#'
#' @examples
#' \dontrun{
#' numExp = 65
#' numTrials = 10
#' probability = 0.6
#'
#' mybin(iter = numExp, n = numTrials, p = probability)
#' }
#' @export
mybin = function(iter = 100,n = 10, p = 0.5, mkplot = TRUE){ # set default values
  # make a matrix to hold the samples initially filled with NA's
  sam.mat=matrix(NA, nrow = n,ncol = iter, byrow=TRUE)
  #Make a vector to hold the number of successes in each trial
  succ=c()
  for(i in 1:iter){
    #Fill each column with a new sample
    sam.mat[,i] = sample(x = c(1,0) , size = n, replace=TRUE, prob = c(p, 1-p))
    #Calculate a statistic from the sample (this case it is the sum)
    succ[i]=sum(sam.mat[,i])
  }
  #Make a table of successes
  succ.tab = table(factor(succ,levels=0:n))
  if(mkplot){
  #Make a barplot of the proportions
  barplot(succ.tab/(iter), col=rainbow(n+1), main="Binomial simulation", xlab="Number of successes")
  }
  succ.tab/iter
}
