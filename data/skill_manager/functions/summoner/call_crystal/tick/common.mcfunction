##############################
### クリスタル共通パーティクル&サウンド
##############################

###---演出---Start
execute rotated ~30 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force
execute rotated ~90 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force
execute rotated ~150 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force
execute rotated ~-150 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force
execute rotated ~-90 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force
execute rotated ~-30 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force

execute if entity @s[tag=Particle] run playsound minecraft:entity.drowned.ambient_water master @a ~ ~ ~ 1 0.5
###---演出---End
