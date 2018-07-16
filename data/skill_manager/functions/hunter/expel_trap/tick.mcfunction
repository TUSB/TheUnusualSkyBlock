##############################
### ニフラムトラップ継続
##############################

execute if entity @s[tag=Level1] as @e[distance=..5,tag=Mob,scores={MobHPMax=..12000},nbt=!{ArmorItems:[{Count:1b}]}] at @s run data merge entity @s {DeathLootTable:"minecraft:empty",Health:0f,DeathTime:19s}
execute if entity @s[tag=Level2] as @e[distance=..5,tag=Mob,scores={MobHPMax=..30000},nbt=!{ArmorItems:[{Count:1b}]}] at @s run data merge entity @s {DeathLootTable:"minecraft:empty",Health:0f,DeathTime:19s}

###---演出---Start
###---演出---End
