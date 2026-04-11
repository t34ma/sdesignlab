adapter_info  

Network Adapter Information Tool  
Version 0.90 (2026-04-04)

1. Overview
This program displays information about the network adapters installed on your Windows PC.  
You can choose which types of adapters to show by specifying an 8-character filter.

2. Basic Usage

2.1 Show all adapters
  adapter_info A
or
  adapter_info *

2.2 Filter by adapter type
Use an 8-character string made of T (show) and F (hide).

Example:
  adapter_info FTFFTTFF

Each position corresponds to one adapter category.  
See the table in section 3.

2.3 Without command-line options
If you run:
  adapter_info
the program checks the environment variable SHOWADAPTERSINFO.

Example:
  SET SHOWADAPTERSINFO=FTFFTTFF
  adapter_info

2.4 Default behavior
If no filter is provided, only Ethernet adapters are shown.

3. Adapter Type Categories (1 to 8)

Position 1: Type 1   Other  
Position 2: Type 6   Ethernet  
Position 3: Type 9   Token Ring  
Position 4: Type 23  PPP  
Position 5: Type 24  Loopback  
Position 6: Type 28  SLIP  
Position 7: Type 71  Wi-Fi (IEEE 802.11)  
Position 8: Any other type value (Unknown or Other)

Example:
  12345678
  --------
  TFFFFFTF

This(TFFFFFTF) shows only "Other" and "Wi-Fi" adapters.

4. Output Information
The program prints the following information for each adapter:

- Adapter name  
- Description  
- MAC address  
- Adapter type  
- IP address  
- Gateway  
- DHCP status

5. System Requirements
- Windows  
- No additional setup required  
