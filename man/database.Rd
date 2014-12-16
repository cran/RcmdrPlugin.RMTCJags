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
m -> Arm index - Only needed on RE Model for 2- and 3-arms trials, where 1 is the baseline treatment and 2,..,n are for the other treatments.\cr

Each line on the database is a treatment of a trial (study), for example:\cr

s	t	 r	  n	b	m\cr
1	1	40	100	1	1\cr
1	3	15	 90	1	2\cr
1	4	10	 75	1	3\cr
...\cr
4	2	50	200	2	1\cr
4	4	60	150	2	2\cr

Random Effect Model (RE Model) for multi-arm trial:

A database with N*3 + 1 columns, where N is the highest number of arms from a trial collection.

t[1,..N,] -> Treatment index\cr
r[1,..N,] -> Number of cases on the treatment\cr
n[1,..N,] -> Total population on the treatment\cr
na -> Number of arms on the study\cr

Each line on the database is a trial. For example, if we collect 10 trials and after check them we have the biggest trial with 5 arms our database structure is:\cr

t[,1] t[,2] t[,3] t[,4] t[,5] r[,1] r[,2] r[,3] r[,4] r[,5] n[,1] n[,2] n[,3] n[,4] n[,5] na\cr
    1	  2	3     4     5    20    30    10     5    14   100    90    80   110    50  5\cr
    1     3     4     5    NA    10    50    60    15    NA   150   200   340   165     1  4\cr
    2     4     5    NA    NA    40    70    80    NA    NA    70   190   500     1     1  3\cr
...\cr
    3     4    NA    NA    NA    80    90    NA    NA    NA   250   580     1     1     1  2\cr

}

\keyword{read.data}
