data work.carsNew;                                         /* 1 */ 
    infile datalines dsd; 
    input Make :$13. Name :$40. Type :$8. Origin :$6.  
          DriveTrain :$5. MSRP MPG_City MPG_Highway; 
    datalines; 
Honda,Prelude base 2dr coupe,Sports,Asia,Front,23500,22,27 
Honda,Prelude type SH 2dr coupe,Sports,Asia,Front,26000,22,27 
Mazda,Millenia type S 4dr,Sedan,Asia,Front,30415,20,28 
Mazda,Millenia base 4dr,Sedan,Asia,Front,25415,20,27 
Ford,Contour SE sport 4dr,Sedan,USA,Front,17035,20,29 
Ford,Contour SVT 4dr,Sedan,USA,Front,22905,20,29 
; 
run; 

data work.carsCombine;                                     /* 2 */ 
    set sashelp.cars work.carsNew(rename=(Name=Model));    /* 3 */ 
    drop Cylinders Horsepower; 
run; 