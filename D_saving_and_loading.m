%% Create some variables
a = 1;
b = 9;
s = 'bme301';
n = randn(10);
f = true;

%% Save the woskspace (default name)
save

%% Save the workspace to a file
save('my_workspace')

%% Save specific variables
save('your_workspace', 's', 'n')

%% Load .mat file
load('your_workspace.mat')






%% Write to text files using fprintf

% Create a sample matrix
x = 0:0.1:1;
y = [x; exp(x)];

% Open a file
fileID = fopen('exptable.txt','w'); % w: write, a: append

% Write to the file
fprintf(fileID, 'Exponential Function\n\n');
fprintf(fileID,'%f %f\n',y);

% Close the file
fclose(fileID);

% Inspect the file
type exptable.txt




%% A more elegant way of saving data as a text file

% Create two columns of data
A  = round(rand(5,1), 2);
B = round(rand(5,1), 2);

% Create a table with the data and variable names
T = table(A, B, 'VariableNames', { 'Var1', 'Var2'}, ...
    'RowNames', {'A', 'B', 'C', 'D', 'E'});

% Write data to text file
writetable(T, 'tabledata.txt')

% Inspect table
type tabledata.txt 

% Using a delimiter
writetable(T,'tabledata2.txt','Delimiter','\t','WriteRowNames',true);
type tabledata2.txt




%% Load from .txt file
M = importdata('tabledata.txt');





%% Write to Excel spreadsheet file
% Basic method
A = rand(10,3);
xlswrite('my_excel_file.xls', A)

% You can specify the "range of cells" also
filename = 'testdata.xlsx';
A = {'Time','Temperature'; 12,98; 13,99; 14,97};
sheet = 2;
xlRange = 'E1';
xlswrite(filename,A,sheet,xlRange)





%% Load from the Excel spreadsheet file

% First create an .xlsx file
values = {1, 2, 3 ; 4, 5, 'x' ; 7, 8, 9};
headers = {'First','Second','Third'};
xlswrite('myExample.xlsx',[headers; values]);

% Read worksheet into numeric matrix
filename = 'myExample.xlsx';
A = xlsread(filename);

% Read a range of cells
filename = 'myExample.xlsx';
sheet = 1;
xlRange = 'B2:C3';
subsetA = xlsread(filename,sheet,xlRange);

% Read a column
filename = 'myExample.xlsx';
columnB = xlsread(filename,'B:B');

% Read numeric, text, and combined data together
filename = 'myExample.xlsx';
[num, txt, comb] = xlsread(filename);








