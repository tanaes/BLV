; bed.g
; called to perform automatic bed compensation via G32
;
; generated by RepRapFirmware Configuration Tool on Tue Oct 09 2018 13:27:56 GMT+0300
M291 P"Probing mesh grid process started" R"Probing.." S1 T2
M561               				; clear any bed transform
G90 							; Set to absolute position
G1 Z10 F2000					; Making sure we're not going to hit the side of glass
G91								; Set to relative position
G28								; home all axis
M557 X70:280 Y30:250 P4			; Define mesh grid
G29								; Probe the bed and save height map to file
M291 P"Probing mesh grid process finished !" R"Probing.." S1 T2
M374 							; Save calibration data. Default is sys/heightmap.csv