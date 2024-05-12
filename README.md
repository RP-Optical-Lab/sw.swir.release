# SW SWIR Video Engine 
### New generation of video engine software based Xilinx KRIA K26 SoM.

![](https://www.xilinx.com/content/xilinx/en/products/som/kria/_jcr_content/root/parsystop/xilinxflexibleslab_c_113513440/xilinxflexibleslab-parsys/xilinxcolumns_2046427055/childParsys-1/xilinximage_copy.img.png/1694739643280.png "SoM k26")

# What's new in the latest version

## Version 0.1.0
### New:
1. Added SW/FW Update logic
2. Added GET LOG command
3. Added GET INFO command
4. Added FSYNC mode from config file
5. Added partially runtime log
6. Added logic for checking frame health
7. System ID + FW version
8. Set fw core frame size
### Bugs fixed:
1. Fixed AF issue
2. Fixed issue with serial communication


## Version 0.0.5
### New:
1. Added the ability to output a synthetic video pattern (configuration file and DSYNTH command).
2. The logic of operating parameters has been redesigned.
3. Added safety "pin" to prevent unwanted NUC calibration process.
### Bugs fixed:
1. Fixed lens goto issue
2. Fixed restart issue
3. Fixed issue with negative offset 


## Version 0.0.4
### New:
1. Added digital zoom x1.5 and x3
2. Added interrupted autofocus START/ABORT/STATUS
### Bugs fixed:
1. Fixed first line artifacts issue.
2. Fixed serial issue with the RX buffer
3. Get LENSFL and LENSPOS commands now updates as the lens moves rather than on demand.


## Version 0.0.3
### New:
1. Target
2. Inverse
3. Dynamic 422 Baud rate for main serial port 
4. Added lens filter.
5. Added NUC with flip.
6. Added resetting operation parameters to default values
### Bugs fixed:
1. Fixed NUC tables loading issue
2. Integration time auto mode 
3. Save operation parameters to json
4. Statistics calculation
### Notes:
1. For Dynamic 422 Baud rate required rp-swir-sdi-isp-v001a version 

   
## Version 0.0.2
### New:
1. On startup, the executable binary file now starts from an init script
2. Added lens filter.
3. Added NUC with flip.
4. Added resetting operation parameters to default values
### Bugs fixed:
1. Fixed filter IDs
2. AF for tetra thats supports lens DK400 v1.1
### Notes:


## Version 0.0.1
### New:
1. All new ... ⚡
### Bugs fixed:
1. New release without bugs and problems 🏆
### Notes:
1. The release works as expected