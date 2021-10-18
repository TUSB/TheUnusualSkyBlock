
### セイクリッドピラー発動中レベル３

#演出
function makeup:skill/act/white_mage/sacred_pillar/tick/level3

###ダメージ
function skill:damage/load
execute positioned ~-3.5 ~-6 ~-3.5 as @e[dx=6,dy=12,dz=6,tag=Mob,nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] run function skill:damage/apply/
scoreboard players set _ PillarCount 0
execute positioned ~-3.5 ~-6 ~-3.5 as @e[dx=6,dy=12,dz=6,tag=Mob,nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] run scoreboard players add _ PillarCount 1
scoreboard players operation @s PillarCount -= _ PillarCount
