##############################
### リレイズ
##############################

execute as @e[tag=Mob,distance=..6,limit=3,sort=random] run function skill_manager:enemy/reraise/apply

playsound minecraft:entity.elder_guardian.curse master @a[distance=..16] ~ ~ ~ 1 2 1
