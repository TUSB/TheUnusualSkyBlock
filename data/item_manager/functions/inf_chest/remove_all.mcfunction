kill @s
execute positioned as @s run setblock ~ ~ ~ minecraft:air replace
give @p minecraft:armor_stand{display:{Name:"{\"text\":\"無限チェスト\"}"},EntityTag:{Tags:["inf_chest"],NoGravity:true,Invulnerable:true,ArmorItems:[{},{},{},{id:"minecraft:chorus_flower",Count:1b}]}}
