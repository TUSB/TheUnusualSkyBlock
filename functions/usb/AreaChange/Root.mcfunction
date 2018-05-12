#ネザー・エンド移動検知
scoreboard players set @a[score_Dimension_min=0] Dimension -1 {Dimension:-1}
scoreboard players set @a[score_Dimension=99] Dimension 199 {Dimension:1}

#通常世界移動検知
execute @a[rm=-1] ~ ~ ~ /function usb:AreaChange/Dimension99 unless @s[score_Dimension_min=0,score_Dimension=99]

#各ディメンション検知
execute @a[x=-192,y=-100,z=-912,dx=511,dy=400,dz=511] ~ ~ ~ /function usb:AreaChange/Skylands unless @s[score_Dimension_min=0,score_Dimension=0]
execute @a[x=-3072,y=-100,z=-656,dx=1727,dy=400,dz=1103] ~ ~ ~ /function usb:AreaChange/Cloudia unless @s[score_Dimension_min=10,score_Dimension=10]
execute @a[x=-288,y=-100,z=-3296,dx=639,dy=400,dz=1311] ~ ~ ~ /function usb:AreaChange/TableMountain/Check unless @s[score_Dimension_min=11,score_Dimension=11]
execute @a[x=-240,y=-100,z=448,dx=559,dy=400,dz=575] ~ ~ ~ /function usb:AreaChange/GulliversLand unless @s[score_Dimension_min=12,score_Dimension=12]
execute @a[x=752,y=-100,z=1024,dx=2063,dy=400,dz=2095] ~ ~ ~ /function usb:AreaChange/IceSheetFloat unless @s[score_Dimension_min=13,score_Dimension=13]
execute @a[x=752,y=-100,z=-320,dx=1439,dy=400,dz=703] ~ ~ ~ /function usb:AreaChange/Underworld unless @s[score_Dimension_min=14,score_Dimension=14]
execute @a[score_Dimension=-1,c=1] ~ ~ ~ /execute @a[x=-640,y=-100,z=-912,dx=1207,dy=400,dz=991] ~ ~ ~ /function usb:AreaChange/Nether unless @s[score_Dimension_min=-100,score_Dimension=-100]
execute @a[score_Dimension=-1,c=1] ~ ~ ~ /execute @a[x=-624,y=-100,z=672,dx=1375,dy=400,dz=943] ~ ~ ~ /function usb:AreaChange/NetherTrial/Check unless @s[score_Dimension_min=-90,score_Dimension=-90]
execute @a[score_Dimension=-1,c=1] ~ ~ ~ /execute @a[x=-2240,y=-100,z=-432,dx=767,dy=400,dz=787] ~ ~ ~ /function usb:AreaChange/NetherDungeon unless @s[score_Dimension_min=-89,score_Dimension=-89]
execute @a[score_Dimension_min=100,c=1] ~ ~ ~ /execute @a[rm=-1] ~ ~ ~ /function usb:AreaChange/End unless @s[score_Dimension_min=110,score_Dimension=110]