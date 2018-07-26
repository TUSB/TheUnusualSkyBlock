##############################
### チェインアローヒット時連鎖
##############################

scoreboard players operation @s Damage += $Damage Global

###---演出---Start
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0 60 force
execute facing entity @e[tag=Mob,distance=4..7,limit=1,sort=nearest] feet run particle minecraft:crit ^ ^1 ^2 0.2 0.2 0.2 0 20 force
execute if score @s ProjectileSkill matches 31022..31024 facing entity @e[tag=Mob,distance=7..15,limit=1,sort=nearest] feet run particle minecraft:crit ^ ^1 ^4 0.2 0.2 0.2 0 20 force
execute if score @s ProjectileSkill matches 31023..31024 facing entity @e[tag=Mob,distance=11..25,limit=1,sort=nearest] feet run particle minecraft:crit ^ ^1 ^7 0.2 0.2 0.2 0 20 force
execute if score @s ProjectileSkill matches 31024 facing entity @e[tag=Mob,distance=16..35,limit=1,sort=nearest] feet run particle minecraft:crit ^ ^1 ^11 0.2 0.2 0.2 0 20 force
playsound minecraft:entity.arrow.hit master @a[distance=..48] ~ ~ ~ 5 0.5
###---演出---End
