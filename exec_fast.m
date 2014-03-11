function exec_fast(file_name, fast_dir)
% Usage exec_fast(file_name, dir)
% This script executes the the fast file in specified 
% director.

cur_dir = pwd;      % The current directory

cd(fast_dir);        % Move to the fast directory

cmd = ['fast ' file_name];   % concatenate the command and the filename

system(cmd);        % Exectue the command

cd(cur_dir);        % Change back to original directory
