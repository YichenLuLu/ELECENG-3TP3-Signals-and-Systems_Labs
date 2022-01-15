clc;
clear;

opts=detectImportOptions('course_grades_2021.xlsx');
opts=setvartype(opts,{'ID_Number','Name'},'string');
table=readtable('course_grades_2021.xlsx',opts);

Cheng={'Cheng Fei','400228518',10,10,10,10,20,10,10,10,10};
Yichen={'Yichen Lu','400247938',10,10,10,10,20,10,10,10,10};
newtable=[table;Cheng;Yichen]