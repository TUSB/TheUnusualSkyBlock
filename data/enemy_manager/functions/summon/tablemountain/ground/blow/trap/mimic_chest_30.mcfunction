##############################
### ミミック召喚 - Tablemountain Ground Blow
##############################

#プレイヤー通過
execute if entity @s[tag=!Summoned] if entity @a[distance=..4,gamemode=!spectator,gamemode=!creative,limit=1] run function enemy_manager:summon/event/mimic_c_spawn_1
##時間経過消滅
execute if entity @s[tag=Garbage] run setblock ~ ~ ~ air replace

