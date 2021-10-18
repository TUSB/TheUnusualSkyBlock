
### セイクリッドピラー発動中レベル１

#演出
function makeup:skill/act/white_mage/sacred_pillar/tick/level1

###ダメージ
function skill:damage/load
execute positioned ~-1.5 ~-4 ~-1.5 as @e[dx=2,dy=8,dz=2,tag=Mob,nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] run function skill:damage/apply/
scoreboard players set _ PillarCount 0
execute positioned ~-1.5 ~-4 ~-1.5 as @e[dx=2,dy=8,dz=2,tag=Mob,nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] run scoreboard players add _ PillarCount 1
scoreboard players operation @s PillarCount -= _ PillarCount
