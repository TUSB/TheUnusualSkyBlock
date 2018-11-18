##############################
### ニフラムトラップ継続中処理
##############################

execute if entity @s[tag=Level1] as @e[distance=..5,tag=Mob,scores={MobHPMax=..500000},nbt=!{ArmorItems:[{Count:1b}]}] at @s run data merge entity @s {DeathLootTable:"minecraft:empty",Health:0f,DeathTime:19s}
execute if entity @s[tag=Level2] as @e[distance=..5,tag=Mob,scores={MobHPMax=..1000000},nbt=!{ArmorItems:[{Count:1b}]}] at @s run data merge entity @s {DeathLootTable:"minecraft:empty",Health:0f,DeathTime:19s}

###---演出---Start
particle minecraft:falling_dust minecraft:yellow_wool ~ ~0.7 ~ 1.7 0 1.7 1 3 force
particle minecraft:falling_dust minecraft:purple_wool ~ ~0.5 ~ 2.5 0 2.5 1 6 force
###---演出---End
