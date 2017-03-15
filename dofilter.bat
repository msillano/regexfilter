@ECHO OFF
:: use:  dofilter.bat  <filter_name_dat>  <path_file.nc_input>  <path_file_output>
C:
CD C:\regexfilter
:: if necessary change the line "java.exe..." to enter the full path to java.exe
:: example:
::  "C:\Program Files\Java\jre1.8.0_66\bin\java.exe" regexfilter %1.dat -i %2 >%3
java.exe regexfilter -b %1.dat  -i %2  >%3
:: for test use  'pause': it don't close the window.
:: pause