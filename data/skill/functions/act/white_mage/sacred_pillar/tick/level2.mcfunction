
### セイクリッドピラー発動中レベル２

#演出
function makeup:skill/act/white_mage/sacred_pillar/tick/level2

###ダメージ
function skill:damage/load
execute positioned ~-2.5 ~-5 ~-2.5 as @e[dx=4,dy=10,dz=4,tag=Mob,nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] run function skill:damage/apply/
scoreboard players set _ PillarCount 0
execute positioned ~-2.5 ~-5 ~-2.5 as @e[dx=4,dy=10,dz=4,tag=Mob,nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] run scoreboard players add _ PillarCount 1
scoreboard players operation @s PillarCount -= _ PillarCount
