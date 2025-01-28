data work.EuropeCars;                                   /* 1 */ 
    set sashelp.cars;                                   /* 2 */ 
    where Origin="Europe";                              /* 3 */      
    length KmL_Group $ 12;                              /* 4 */   
    AvgMPG=mean(MPG_City, MPG_Highway);                 /* 5 */ 
    AvgKmL=AvgMPG/2.352;                                /* 6 */ 
    format Avg: 4.1;                                    /* 7 */ 
    if AvgKmL < 8 then KmL_Group="Under 8 KmL";         /* 8 */ 
        else if AvgKmL < 10 then KmL_Group="8-10 KmL";  
        else KmL_Group="Over 10 KmL";                  
    keep Make Model Type MSRP KmL_Group AvgKmL;         /* 9 */ 
run; 