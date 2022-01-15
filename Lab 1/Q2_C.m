clc;
clear;

 opts=detectImportOptions('course_grades_2021.xlsx');
 opts=setvartype(opts,{'ID_Number','Name'},'string');
 table=readtable('course_grades_2021.xlsx',opts);
 
 max=0;
 for i=2:21
     final=0;
     for j=3:11
         final=final+table{i,j};
     end
     if (final>=max)
         max=final;
         num=i;
     end
 end
 
 Name=table{num,1}
 Max_Final=max
 %%Cheng Fei 40228518
 %%Yichen Lu 400247938