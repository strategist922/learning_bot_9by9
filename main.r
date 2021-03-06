library("plyr")

source("game_mechanics.r")
source("interface.r")
source("sbot.r")
source("bot.r")

conf=rep(0,82)
conf1=rep(0,9)
strat=1:81
turn=1
rcd=NULL


learn_matrix=matrix(rep(0,164),1,164)

d=expand.grid(1:9,1:9)
hstrat=mdply(d,'paste',sep=",")[,3]

colnames(learn_matrix)=c(1:83,hstrat)

learn_matrix=read.lm()  #file="learn_matrix.dat" generated by write.lm()
stat.lm()
###############
###############


learn_matrix=train(n=10, players=c("s","s"));stat.lm()


learn_matrix=train(n=10,players=c("m","s"));stat.lm()


learn_matrix=train(n=10,players=c("s","m"));stat.lm()


learn_matrix=train(n=10,players=c("m","m"));stat.lm()




##  after match with human learn with higher weight:
##  learn_matrix=learn(wt=2)


write.lm()


