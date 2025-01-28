title "Mean Highway MPG By Vehicle Type and Origin";        

proc sgplot data=sashelp.cars;          /* 1 */ 
    where Type ne "Hybrid";             /* 2 */ 
    vbar type / response=mpg_highway    /* 3 */ 
                stat=mean 
                group=origin 
                groupdisplay=cluster; 
   yaxis label="Mean Highway MPG";      /* 4 */ 
run; 

title;