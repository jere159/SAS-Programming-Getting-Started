data europeancars;
    set sashelp.cars;
    where Origin='Europe';
run;

proc print data=europeancars;
run;