README - libiomp5md.dll Version Checker

Purpose
This tool checks which libiomp5md.dll is actually loaded by the system and displays its file path and version.
It is intended as a pre-check tool for diagnosing Intel OpenMP runtime issues before running DuCOM-COM3.

How to Use  
1. Extract the ZIP file.
2. Copy this tool into the same folder where DuCOM-COM3 is (or will be) located.
3. Run: libiomp_version.exe
4. The tool will show the loaded DLL path and version.
5. Press Enter to exit.

Execution Environment
Running this tool and DuCOM-COM3 from the same Command Prompt is recommended. If Intel oneAPI is installed, use the Intel oneAPI command prompt so that the correct environment variables (including PATH) are applied. Depending on which command prompt you use, double-clicking an executable or launching it from a different prompt may load a different libiomp5md.dll than when running it from the intended environment.

Example Output
Loaded DLL: C:\...\libiomp5md.dll
libiomp5md.dll version = 5.0.2024.1234

If an Error Appears
"The code execution cannot proceed because libiomp5md.dll was not found. Reinstalling the program may fix this problem."
This means that the Intel OpenMP runtime (libiomp5md.dll) is missing on your system. Please install the latest Intel OpenMP Runtime (Intel oneAPI) and try again.

"The ordinal XXXX could not be located in the dynamic link library libiomp5md.dll."
This means that an old or incompatible version of libiomp5md.dll is installed. Older DLLs may not provide the required Windows ordinal exports and cannot be loaded correctly. Uninstalling the current runtime and reinstalling the latest Intel OpenMP Runtime (Intel oneAPI) may fix this problem.

Version Requirement
To run DuCOM-COM3, libiomp5md.dll version 5.0.2021.125 or newer is required.
For best compatibility, version 5.0.2023.118 or newer is recommended.
For installation of the Intel OpenMP Runtime, please refer to misc/runtime.

Notes
- This tool does not modify your system.
- No installation or administrator rights are required.
- It only reads version information.
