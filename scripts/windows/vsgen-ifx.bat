@echo off
rem version 1.0 by tmishima, 20250618
setlocal
rem                              ------------- please edit below -------------
set OPTIONS=-DDUCOM_FLAGS_DEBUG="/check:all /traceback /Qinit:arrays,minus_huge"
if "%TOOL%" == "" set TOOL=-T fortran=ifx
if exist cmbuild (if not exist cmbuild\Solver*.sln rd /s /q cmbuild)
if not exist cmbuild mkdir cmbuild
cd cmbuild
echo cmake -A x64 %TOOL% %OPTIONS% -Dlbuiltin=ON -Dlbuilddll=OFF %* ...
cmake -A x64 %TOOL% %OPTIONS% -Dlbuiltin=ON -Dlbuilddll=OFF .. %*
cd ..
if not exist cmbuild\Solver*.sln (echo Error detected. Removing below: & rd /s cmbuild)
