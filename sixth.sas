data cars_country;                                 /* 1 */ 
   infile datalines delimiter=',' dsd;  
   input Country:$13. Make:$13. ; 
   datalines;                       
England,Jaguar 
England,Land Rover 
England,MINI 
Germany,Audi 
Germany,BMW 
Germany,Mercedes-Benz 
Germany,Porsche 
Germany,Volkswagen 
Japan,Acura 
Japan,Honda 
Japan,Infiniti 
Japan,Isuzu 
Japan,Lexus 
Japan,Mazda 
Japan,Mitsubishi 
Japan,Nissan 
Japan,Scion 
Japan,Subaru 
Japan,Suzuki 
Japan,Toyota 
South Korea,Hyundai 
South Korea,Kia 
Sweden,Saab 
Sweden,Volvo 
United States,Buick 
United States,Cadillac 
United States,Chevrolet 
United States,Chrysler 
United States,Dodge 
United States,Ford 
United States,GMC 
United States,Hummer 
United States,Jeep 
United States,Lincoln 
United States,Mercury 
United States,Oldsmobile 
United States,Pontiac 
United States,Saturn 
; 
run; 

proc sort data=work.cars_country;                  /* 2 */ 
    by Make; 
run; 

data work.carsUpdate;                             /* 3 */ 
    merge work.cars_country sashelp.cars;          /* 4 */ 
    by Make;                                      /* 5 */ 
    keep Country Make Model Type Origin MSRP;     /* 6 */ 
run;