##############################
### 風切毎秒処理
##############################

effect give @s minecraft:slow_falling 2 0
execute if entity @s[x_rotation=-90..0] run effect give @s minecraft:levitation 1 0
scoreboard players remove @s Kazakiri 1
execute unless score @s Kazakiri matches 0.. run scoreboard players reset @s Kazakiri
execute if score @s Kazakiri matches 5 run tellraw @s [{"text":"","color":"yellow"},{"text":"風切","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果が切れそうだ。"]
execute if score @s Kazakiri matches 2 run tellraw @s [{"text":"","color":"yellow"},{"text":"風切","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果が切れそうだ！！！"]
execute unless score @s Kazakiri matches 0.. run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"風切","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果が切れた。"]

###---演出---Start
execute if score @s Kazakiri matches 5 run playsound minecraft:entity.bat.loop master @s ~ ~ ~ 1 1.2
execute if score @s Kazakiri matches 2 run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1 0.8
execute unless score @s Kazakiri matches 0.. run playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 0.4
particle minecraft:instant_effect ~ ~0.1 ~ 1 0 1 0 10 force
particle minecraft:end_rod ~ ~ ~ 1 0 1 0 5 force
summon minecraft:item ^0.6 ^1.2 ^1 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5960,PickupDelay:32767}
summon minecraft:item ^-1 ^1 ^0.6 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5940,PickupDelay:32767}
summon minecraft:item ^0.3 ^0.8 ^-0.8 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5950,PickupDelay:32767}
###---演出---End
