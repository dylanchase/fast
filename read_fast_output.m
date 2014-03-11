function [out_data, out_list] = read_fast_output(fast_file, fast_dir)

fid = fopen([fast_dir filesep fast_file]);

%% Read Unused headers
for i = 1:6
    fgetl(fid);
end

%% Read Headers
line = fgetl(fid);
C = textscan(line, '%s');       % read the headers
list = C{1,1}';                 % retrieve list from structure and transpose
n = length(list);               % number of outputs

out_list = list;

%% Read data
fgetl(fid);         % labels
fgetl(fid);         % first row of data
data = fscanf(fid, '%g', [n inf]);
out_data = data';
fclose(fid);
