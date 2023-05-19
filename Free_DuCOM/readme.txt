(note)
To prevent virus infection, the SolverMT.zip is locked.
Please contact info@sdesignlab.co.jp to get password.

(how to run)
Save SolverMT.exe and SolverMT_.dll to the same directory.
Then, run SolverMT.exe in CMD.

(sample data)
Please try very simple sample data in the sample_data directory.

(limitation)
1) The linear solver included in the SolverMT_.dll is the
depressed speed version - equivalent to the sequential
gaussian elimination method.
2) The enhanced strain model is removed, which may estimate
higer shear capacity of RC members than reality due to
shear lock. Please use second-order isoparametric elements.

(Technical note)
The size of element should be greater than 2 times of maximum
coarse aggregate size of concrete to get proper shear capacity.

(no warranty)
We disclaim any warranty for any damage caused by using
this free software Free_DuCOM.

(trouble shooting)
(1)If you see "libiomp5md.dll not found" error, please try to
download Intel Fortran Compiler Runtime for Windows 2021.4.0 and install from:
  https://www.intel.com/content/www/us/en/developer/articles/tool/compilers-redistributable-libraries-by-version.html
(2)If you still see another error such as "ntdll.dll not found",
please try to download Microsoft Visual C++ Redistributable latest supported
downloads(Visual Studio 2015, 2017, 2019, and 2022 -x64) and install from:
  https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170
