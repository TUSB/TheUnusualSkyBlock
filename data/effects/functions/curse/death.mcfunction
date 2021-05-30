
### 呪詛 発動

kill @e[type=item,distance=..10,nbt={Age:0s}]
clear @s[gamemode=!creative]
function makeup:effects/curse/death
tag @s remove Curse
