; Ender 3 Custom Start G-code                
M140 S0                
M105                
M190 S0                
M104 S185                
M105                
M109 S185                
G92 E0 ; Reset Extruder                
G28 ; Home all axes                
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed                
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position                
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line                
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little                
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line                
G92 E0 ; Reset Extruder                
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed                
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
G92 E0
;Set Absolute Position
G90
;Move to
G0 X20 Y20 Z0
;Set Relative Position
G91
;Move to
G0 X0 Y0 Z0
;Set Relative Position
G91
;extrude to
G1 X10 Y0 Z0 F200 E0.24945101284607277
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E0.49890202569214553
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E0.7483530385382183
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E0.9978040513842911
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E1.247255064230364
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E1.4967060770764367
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E1.7461570899225094
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E1.9956081027685821
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E2.245059115614655
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E2.494510128460728
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E2.7439611413068006
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E2.9934121541528733
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E3.242863166998946
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E3.492314179845019
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E3.7417651926910915
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E3.9912162055371643
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E4.240667218383237
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E4.49011823122931
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E4.739569244075383
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E4.989020256921457
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E5.23847126976753
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E5.487922282613603
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E5.737373295459676
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E5.986824308305749
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E6.2362753211518225
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E6.485726333997896
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E6.735177346843969
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E6.984628359690042
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E7.234079372536115
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E7.483530385382188
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E7.732981398228262
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E7.982432411074335
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E8.231883423920408
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E8.481334436766481
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E8.730785449612554
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E8.980236462458627
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E9.2296874753047
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E9.479138488150774
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E9.728589500996847
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E9.97804051384292
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E10.227491526688993
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E10.476942539535067
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E10.72639355238114
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E10.975844565227213
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E11.225295578073286
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E11.47474659091936
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E11.724197603765433
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E11.973648616611506
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E12.223099629457579
;Move to
G0 X0 Y0.2 Z0 F2
;extrude to
G1 X-10 Y0 Z0 F200 E12.472550642303652
;Move to
G0 X0 Y0.2 Z0 F5
;extrude to
G1 X10 Y0 Z0 F200 E12.722001655149725
;Move to
G0 X-10 Y-10
;Set Relative Position
G91
;next layer
;Move to
G0 X0 Y0 Z0.2 F100
G91 ;Relative positioning                
G1 E-2 F2700 ;Retract a bit                
G1 E-2 Z0.2 F2400 ;Retract and raise Z                
G1 X5 Y5 F3000 ;Wipe out                
G1 Z10 ;Raise Z more                
G90 ;Absolute positioning                
G1 X0 Y235 ;Present print                
M106 S0 ;Turn-off fan                
M104 S0 ;Turn-off hotend                
M140 S0 ;Turn-off bed                
M84 X Y E ;Disable all steppers but Z