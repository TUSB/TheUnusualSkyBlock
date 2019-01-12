##############################
### ミミック召喚 - Tablemountain Ground Blow
##############################

#プレイヤー通過
execute if entity @a[distance=..4,gamemode=!spectator,gamemode=!creative,limit=1] run function enemy_manager:summon/event/mimic_c_spawn 
##時間経過消滅
execute if entity @a[tag=Garbage] run function setblock ~ ~ ~ air replace

