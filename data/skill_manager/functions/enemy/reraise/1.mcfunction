##############################
### リレイズ
##############################

tag @e[tag=Mob,distance=..6,limit=3,sort=random] add ReraiseTarget
tag @e[tag=ReraiseTarget] add Revival
tag @e[tag=ReraiseTarget,tag=!HasSkill] add HasSkill
execute as @e[tag=ReraiseTarget] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:instant_effect ~ ~ ~ 0.3 0.3 0.3 0 30 normal
playsound minecraft:entity.elder_guardian.curse master @a[distance=..16] ~ ~ ~ 1 2 1
tag @e[tag=ReraiseTarget] remove ReraiseTarget
