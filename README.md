# SW SWIR Video Engine 
### New generation of video engine software based Xilinx KRIA K26 SoM.

## Version 15.1.0
### New:
1. New versioning scheme for SW & HW.
2. Added hardware FIR with custom kernels (sharpening and smoothing filters).
3. Implemented Black Level Correction in the ISP module and optimized parameter application.
4. Introduced a new hardware NUC module with shift functionality and saturate casting.
5. Optimized saving of user-defined operational parameters.
6. Added video freeze functionality.
### Bugs fixed:
1. Resolved BPC reset issue during 2-point NUC calibration.
2. Fixed performance issue in serial communication.
3. Corrected image and bad pixel handling in the CAPTURE command.
### Notes:
1. Required FW 15.1.0 version 

## Version 1.0.7
### New:
1. Added the ADJ command.
2. Added a configuration option to reverse the zoom and focus behavior.

## Version 1.0.6
### New:
1. DRC Control added to the ISP (Tiles) module.
2. Offset Control functionality implemented.
### Bugs fixed:
1. Fixed toggle issues in Sharpening and Spatial Filters.
2. Resolved malfunction in the YTOGGLE command.
3. Corrected feedback behavior in the ADJ3 command.
### Notes:
1. Updated major versioning logic to support fetch operations from the GUI interface.
   
## Version 1.0.5
### New:
1. Added PID to ANT.
2. Synchronized iTime updates with the frame sequence.
3. Introduced a lens filter based on the system configuration.
4. Implemented 1p NUC.
5. The "check image health" module has been switched from mandatory to optional
6. Added a full system reset, including the lens.
### Bugs fixed:
1. Resolved digital zoom feedback issues.
2. Optimized the 2p NUC algorithm.
3. Fixed horizontal line artifacts in frames.
### Notes:
1. Modified 2p NUC calibration procedure.
2. The original config file has been split to suit different systems.

## Version 1.0.4
### Bugs fixed:
1. Autofocus: Fixed issue in 720p
2. BPC: Reset bad pixel map when calibrating NUC
3. Statistics moved after NUC calculation algorithm

## Version 1.0.3
### New:
1. Added FIR filter for sharpening (CPU side).
2. Added Spatial Filter for reduce spatial noise (CPU side).
3. Added Inpaint method in BPR - currently not enabled
### Bugs fixed:
1. BPR: Improved algorithm.

## Version 1.0.2
### New:
1. Added interpolation method for autofocus
2. Added TEC PID control - currently not enabled
### Bugs fixed:
1. Autofocus: Improved scanning algorithm.

## Version 1.0.1
### New:
1. Added an additional layer to correct bad pixels from NUC tables.
### Bugs fixed:
1. Fixed lens parsing issue.
2. Fixed Stream flickering issue (added more CLAHE tiles).


## Version 1.0.0
### New:
1. Added ALPD Accel module.
2. Added NUC Accel module.
3. Added BPC Accel module.
4. The operation time of ISP Accel has been reduced.
5. Added image capture cmd.
6. Speed up saving working parameters.
7. The stream pipe has been optimized.
8. Added get histogram cmd.
### Bugs fixed:
1. Fixed version control.
### Notes:
1. Required FW rp-swir-sdi-v1.0.0 version 


## Version 0.1.3
### Bugs fixed:
1. Fixed get focal length command

## Version 0.1.2
### Bugs fixed:
1. Fixed Ethernet commands parsing.
2. Improved autofocus logic.

## Version 0.1.1
### New:
1. Added parameter to config file to control ISP interactions
### Bugs fixed:
1. Fixed video stream interruptions after long periods of work.
2. Improved autofocus logic. An option has been added to the configuration file to configure scanning range.

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