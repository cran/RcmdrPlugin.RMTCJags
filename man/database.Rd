\name{database-structure}
\alias{database-structure}
\alias{read.data}
\title{How to format database for analysis?}
\description{Manual to build database for RcmdrPlugin.RMTCJags}

\details{

Fixed Effect Model (FE Model), Random Effect Model (RE Model) Ignoring multi-arm trials and Random Effect Model (RE Model) for 2- and 3-arms trials:

A database with six (6) variables:\cr
s -> Study index (Number)\cr
t -> Treatment index (Number)\cr
r -> Number of cases on the treatment\cr
n -> Total population on the treatment\cr
b -> Baseline treatment\cr
m -> Arm index (Only needed on RE Model for 2- and 3-arms trials), where 1 is the baseline treatment and 2,..,n are for the other treatments\cr

Each line on the database is a treatment of a trial (study), for example:

\tabular{llllll}{
s \tab t \tab r \tab n \tab b \tab m\cr
1 \tab 1 \tab 40 \tab 100 \tab 1 \tab 1\cr
1 \tab 3 \tab 15 \tab 90 \tab 1 \tab 2\cr
1 \tab 4 \tab 10 \tab 75 \tab 1 \tab 3\cr
... \tab ... \tab ... \tab ... \tab ... \tab ...\cr
4 \tab 2 \tab 50 \tab 200 \tab 2 \tab 1\cr
4 \tab 4 \tab 60 \tab 150 \tab 2 \tab 2\cr
}

Random Effect Model (RE Model) for multi-arm trial:

A database with N*3 + 1 columns, where N is the highest number of arms from a trial collection.

t[1,..N,] -> Treatment index\cr
r[1,..N,] -> Number of cases on the treatment\cr
n[1,..N,] -> Total population on the treatment\cr
na -> Number of arms on the study\cr

Each line on the database is a trial. For example, if we collect 10 trials and after check them we have the biggest trial with 5 arms our database structure is:

\tabular{llllllllllllllll}{
t[1,] \tab t[2,] \tab t[3,] \tab t[4,] \tab t[5,] \tab r[1,] \tab r[2,] \tab r[3,] \tab r[4,] \tab r[5,] \tab n[1,] \tab n[2,] \tab n[3,] \tab n[4,] \tab n[5,] \tab na\cr
1 \tab 2 \tab 3 \tab 4 \tab 5 \tab 20 \tab 30 \tab 10 \tab 5 \tab 14 \tab 100 \tab 90 \tab 80 \tab 110 \tab 50 \tab 5\cr
1 \tab 3 \tab 4 \tab 5 \tab NA \tab 10 \tab 50 \tab 60 \tab 15 \tab NA \tab 150 \tab 200 \tab 340 \tab 165 \tab 1 \tab 4\cr
2 \tab 4 \tab 5 \tab NA \tab NA \tab 40 \tab 70 \tab 80 \tab NA \tab NA \tab 70 \tab 190 \tab 500 \tab 1 \tab 1 \tab 3\cr
... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \cr
3 \tab 4 \tab NA \tab NA \tab NA \tab 80 \tab 90 \tab NA \tab NA \tab NA \tab 250 \tab 580 \tab 1 \tab 1 \tab 1 \tab 2\cr}
}
\keyword{read.data}

