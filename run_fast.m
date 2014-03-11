% This is a script for running fast from MATLAB

fast_dir = 'fast';
file_name = 'Sample_FAST';

in_file = [file_name '.fst'];
out_file = [file_name '.out'];

write_fast_file(in_file, fast_dir);

exec_fast(in_file, fast_dir);

[out_data, out_list] = read_fast_output(out_file, fast_dir);
