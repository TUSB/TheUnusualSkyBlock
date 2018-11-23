##############################
### アイスジャベリン処理
##############################

execute if entity @s[tag=IceJavelin] run function skill_manager:black_mage/ice_javelin/tick_head
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=2,dz=1,tag=Mob] at @s run data merge entity @s {Motion:[0d,0d,0d]}
execute if score @s DecrementTimer matches ..0 run function skill_manager:black_mage/ice_javelin/break
