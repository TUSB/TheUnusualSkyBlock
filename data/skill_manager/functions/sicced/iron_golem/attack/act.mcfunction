##############################
### アイアンゴーレムヒット
##############################

###攻撃力 100 (-> 180)くらい
execute positioned ~-2 ~ ~-2 as @e[dx=4,dy=4,dz=4,tag=Mob,scores={DecrementTimer=8},nbt={OnGround:false}] at @s run data merge entity @s {Motion:[0d,1d,0d]}
execute positioned ~-2 ~ ~-2 run scoreboard players operation @e[dx=4,dy=4,dz=4,tag=Mob,scores={DecrementTimer=8},nbt={OnGround:false}] Damage > @s SkillAttribute
