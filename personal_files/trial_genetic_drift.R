

N <- 50  # size
gen <- 100 # generations
nrepl <- 10 # number of replicates
fA <- 0.50


plot(x=1:gen, type="l", ylim=c(0,1))
for (j in 1:nrepl) {
  # different initial start
  fA=rbinom(1, 2*N, fA) / (2*N)
  for(i in 1:nrepl){
    f=rbinom(1, 2*N, fA) / (2*N)
    freqs=c(freqs,f)
  }
  lines(x=1:gen, y=freqs,color=rainbow(j))
}

plot(x=1:gen, type="l", ylim=c(0,1))
for (j in 1:nrepl) {
  freqs <- c(rep(0,gen))
  freqs[1] <- fA
  for(i in 2:gen) {
    fA <- rbinom(1, 2*N, fA) / (2*N)
    freqs[i] <- fA
  }
lines(x=1:gen, y=freqs, col=rainbow(nrepl)[j])
}