clc;
clear;
opts = detectImportOptions('course_grades_2021.xlsx');
opts = setvartype(opts, {'ID_Number', 'Name'}, 'string');
table = readtable('course_grades_2021.xlsx', opts);

max = 0;

for i = 2:21
    sum = 0;
    for j = 3:6
        sum = sum + table{i,j};
    end
    if (sum > max)
        max = sum;
        name = i;
    end
end

Name = table{name,1}
TotalLabMark = max
    