title 'First Report with the REPORT Procedure';
  
proc report data=sashelp.cars;                           /* 1 */
    where Type="Sedan";                                  /* 2 */
    column Make Model MPG_City MPG_Highway MSRP;         /* 3 */
    define Make / order;                                 /* 4 */
    define MPG_City / mean format=6.1;                   /* 5 */
    define MPG_Highway / mean format=6.1;  
    define MSRP / mean;
    rbreak after / summarize;                            /* 6 */
    break after Make / summarize;                        /* 7 */
    compute after Make;                                  /* 8 */
        line ' ';
        Make='Average';
    endcomp;
run;

title;