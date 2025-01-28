%macro PrintTable(table, rows, header);             /* 1 */

    title "First &rows Rows from %upcase(&table)";  /* 2 */
    proc print data=&table(obs=&rows)               
        %if &header=label %then %do;                /* 3 */
            label
        %end;
    ;                                               
    run;
    title;

%mend PrintTable;                                   /* 4 */

%PrintTable(sashelp.cars, 10, label)                /* 5 */
%PrintTable(sashelp.cars, 5, name)                  /* 6 */
%PrintTable(sashelp.class, 5)                       /* 7 */