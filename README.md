# BLV
I will only update my configuration files for the latest released versions. I won't do it for the beta versions because they change too frequent. If you find any issues PM me on facebook. I'm trying to highlight any useful or important information so if I missed somehting I apologize.

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
https://duet3d.dozuki.com/
https://forum.duet3d.com/
https://www.blvprojects.com/

# Notice
My printers are both highly customized with non-standard bed sizes. Be prepared to make changes in the firmware 
M208 in config.g 
G1 X### Y### in homeall.g and homex.g-This is where it says to probe the bed after homing X and Y.
M557 X##:## Y##:## in bed.g
