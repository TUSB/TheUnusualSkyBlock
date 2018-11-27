##############################
### ライトニングブロー与ダメ処理
##############################

scoreboard players operation @s Damage > $Damage Global

###スタン
scoreboard players set $MinValue Global 2
function skill_manager:ninja/isukumi/stop

###---演出---Start
particle minecraft:dust 1 1 0 2.2 ~ ~10 ~ 0.15 5 0.15 0 100 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~10 ~ 0.15 5 0.15 0 15 force @a[tag=ShowParticles]
particle minecraft:item minecraft:horn_coral_block ~ ~ ~ 0 0 0 0.4 100 force @a[tag=ShowParticles]
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..16] ~ ~ ~ 2 2
###---演出---End
