##############################
### 叫び
##############################



tag @a[distance=..8,sort=random,limit=1] add screamTarget

###---演出---Start
playsound minecraft:entity.ghast.hurt master @a[tag=screamTarget,limit=1] ~ ~ ~ 100 0
playsound minecraft:entity.ghast.hurt master @a[tag=screamTarget,limit=1] ~ ~ ~ 100 0.25
playsound minecraft:entity.ghast.hurt master @a[tag=screamTarget,limit=1] ~ ~ ~ 100 0.5
playsound minecraft:entity.ender_dragon.ambient master @a[tag=screamTarget,limit=1] ~ ~ ~ 100 0
playsound minecraft:entity.ender_dragon.ambient master @a[tag=screamTarget,limit=1] ~ ~ ~ 100 0.25
playsound minecraft:entity.ender_dragon.ambient master @a[tag=screamTarget,limit=1] ~ ~ ~ 100 0.5
###---演出---End

effect give @a[tag=screamTarget,limit=1] minecraft:mining_fatigue 5 20
effect give @a[tag=screamTarget,limit=1] minecraft:slowness 5 20
tag @a[tag=screamTarget,limit=1] remove screamTarget