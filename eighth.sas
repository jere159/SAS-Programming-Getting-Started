%let table=sashelp.cars;                        /* 1 */
%let rows=10;                                   /* 2 */
%let header=label;                              /* 3 */

title "First &rows Rows from %upcase(&table)";  /* 4 */
proc print data=&table(obs=&rows) &header;      /* 5 */
run; 
title;

proc print data=sashelp.cars(obs=10) label;