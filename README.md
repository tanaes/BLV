# BLV
I will only update my configuration files for the latest released versions. I won't do it for the beta versions because they change too frequent. If you find any issues PM me on facebook. I'm trying to highlight any useful or important information so if I missed somehting I apologize.

Make sure your M208 in config.g is configured correctly for max and min.

# Firmware versions:
AM8=AM8 Duet 2 Wifi RRF 3.1.1.

Cube2=Cube Duet 2 RRF 3.1.1.

Cube=Cube Duet 3 RRF 3.1.1.

If upgrading from Duet RRF2 you need to update to RRF3.0.0 before going to the latest released version. After updating to RRF3.0.0 you can go to RRF3.#.#. 
https://duet3d.dozuki.com/Wiki/Installing_and_Updating_Firmware#Section_Upgrading_a_Duet_WiFi_Ethernet_Maestro_from_firmware_2_x_to_3_01_or_later
There are a number of changes in RRF3 which makes some of the RRF2 Gcode incompatible.
https://duet3d.dozuki.com/Wiki/RepRapFirmware_3_overview#Section_Summary_of_what_you_need_to_do_to_convert_your_configuration_and_other_files

Become familiar with the firmware. Learn to troubleshoot and use the Duet resources. You'll learn more if figure it out on your own vs always asking someone to fix it for you.
Make sure you're using the latest version of the firmware.

After your build is assembled and firmware configured, DO THE COMMISSION TESTING!!!! I can't stress that enough. It can prevent damage to the printer or the main board.
https://duet3d.dozuki.com/Wiki/Step_by_step_guide#Section_Commissioning_tests

# Duet Resources/Useful links
https://duet3d.dozuki.com/Wiki/Getting_Started_With_Duet_3
https://duet3d.dozuki.com/Wiki/Step_by_step_guide
https://duet3d.dozuki.com/Wiki/Gcode
https://duet3d.dozuki.com/Wiki/Bed_levelling_using_multiple_independent_Z_motors
https://duet3d.dozuki.com/
https://forum.duet3d.com/
https://www.blvprojects.com/

# Notice for independent leveling
- You must use the M671 command to define the X and Y coordinates of the leadscrews. The M671 command must come after the M584 command and must specify the same number of X and Y coordinates as the number of motors assigned to the Z axis in the M584 command; and these coordinates must be in the same order as the driver numbers of the associated motors in the M584 command. The M671 command must also come after any M667 or M669 command.
If you have 3 independent steppers you'll define it with the physical location in relation to the nozzle. The S parameter is for the max allowed adjustment.
Ex M671 X###:###:### Y###:###:### S##

- If you have 3 or 4 Z motors, in bed.g use at least one probe point close to each leadscrew.

- If you have just 2 Z motors, one at each end of the X axis, then set the Y coordinates of the leadscrews in the M671 command to be equal (the value doesn't matter, so you can use zero). Use at least two probe points, one at each end of the X axis. All your probe points should have the same Y coordinate, which should be at or near the middle of the printable range.

-Define probe points with P#
The S parameter is the number of probe points(should match the number of independent steppers)
G30 P0 X55 Y161 Z-99999			; Probe near left lead screw position -65,166
G30 P1 X328 Y301 Z-99999 S2			; Probe near right rear lead screw position 364,25

-Note: If you are experiencing the Z axis compensating in the opposite direction needed, that means your Z motors are swapped. You can either swap the X values in the M671 command, or swap the stepper motors plugged into the Duet.
