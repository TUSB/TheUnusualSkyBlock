##############################
### リレイズ
##############################

tag @e[tag=Mob,distance=..6,limit=3,sort=random] add ReraiseTarget
tag @e[tag=Reraise] add Revival
tag @e[tag=Reraise,tag=!HasSkill] add HasSkill
execute as @e[tag=Reraise] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:instant_effect ~ ~ ~ 0.3 0.3 0.3 0 30 normal
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 2 1
tag @e[tag=Reraise] remove ReraiseTarget
