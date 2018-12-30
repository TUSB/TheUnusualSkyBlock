tag @e[tag=Mob,distance=..6,limit=3,sort=random] add Revival
tag @e[tag=Mob,tag=!HasSkill,distance=..6,limit=3,sort=random] add HasSkill
execute as @e[tag=Mob,distance=..6,limit=3,sort=random] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:instant_effect ~ ~ ~ 0.3 0.3 0.3 0 30 normal
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 2 1