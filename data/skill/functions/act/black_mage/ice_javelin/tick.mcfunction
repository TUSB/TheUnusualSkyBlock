##############################
### アイスジャベリン処理
##############################

execute if entity @s[tag=IceJavelinHead] run function skill:act/black_mage/ice_javelin/tick_head
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=2,dz=1,tag=Enemy,tag=!Unmoved] at @s run data merge entity @s {Motion:[0d,0d,0d]}
execute if data entity @s {PortalCooldown:0} run function skill:act/black_mage/ice_javelin/break
