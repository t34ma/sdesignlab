README - libiomp5md.dll for DuCOM-COM3

DuCOM-COM3 uses the OpenMP runtime provided by Intel oneAPI.
If this file is missing or incompatible, DuCOM-COM3 may fail to start with an error:
  -libiomp5md.dll not found
  -The procedure entry point could not be located in libiomp5md.dll
This DLL is an officially redistributable component permitted by Intel.

Recommended method:
Install the official Intel oneAPI Fortran runtime, which includes this DLL system-wide.
This ensures compatibility and reduces the risk of runtime errors.
Compatibility has been confirmed for versions 2024.4.0 through 2025.2.1.
For details, refer to: Intel C++ and Fortran Compilers Redistributable Libraries by Version
URL: https://www.intel.com/content/www/us/en/developer/articles/tool/compilers-redistributable-libraries-by-version.html
Note: The Fortran runtime is listed slightly below the C++ section on the page.
      Please be careful not to confuse the two.

Alternative (for troubleshooting):
If DuCOM-COM3 fails to start even after installing the Intel runtime,
you can use the DLL included in this zip archive as a workaround.
 1. Extract libiomp5md.dll from this zip file.
 2. Copy libiomp5md.dll into the same folder as the DuCOM-COM3 executable file.
 3. Launch DuCOM-COM3.

License notice:
This DLL is redistributed in accordance with Intel's license terms.
For more information, please refer to IntelÅfs official documentation.
