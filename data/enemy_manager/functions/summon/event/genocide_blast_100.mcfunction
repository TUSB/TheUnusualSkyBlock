##############################
### ジェノサイドボムの爆風召喚 - Event  
##############################

effect give @a[gamemode=!creative,distance=..5] minecraft:instant_damage 1 5 true
scoreboard players set @e[limit=64,distance=..5,tag=Mob] Damage 1000000
playsound minecraft:entity.blaze.ambient master @a[distance=..32] ~ ~ ~ 2 0 1
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 2 0 1
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 2 0 1
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 2 0 1
particle minecraft:flame ~ ~ ~ 3 3 3 0.09 5000 force
