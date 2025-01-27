title "First Data Exploration Program";
proc contents data=sashelp.cars order=varnum;             /* 1 */
run;

title "The PRINT Procedure";
proc print data=sashelp.cars(obs=20) label;               /* 2 */
    var Make Model Type Origin MSRP MPG_City MPG_Highway; /* 3 */
run;
title;

proc freq data=sashelp.cars order=freq;                   /* 4 */
    table Type Origin / nocum;                            /* 5 */
    table Type*Origin / norow nocol;                      /* 6 */
run;

proc means data=sashelp.cars min mean max maxdec=1;       /* 7 */
    var MPG_Highway;                                      /* 8 */
    class Type;                                           /* 9 */
    output out=work.cars_summary
        min=Low
        mean=Average
        max=High;                                         /* 10 */
run;