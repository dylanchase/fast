fast
====

This is a collection of files for executing FAST from MATLAB.

execution
---------
The main script is run_fast.m.  The script writes a FAST input file.  Executes FAST and then reads the data into MATLAB.

Bugs
----

The fast input file must already exist.  For some reason MATLAB fails to write a new file, I'm not sure why.
