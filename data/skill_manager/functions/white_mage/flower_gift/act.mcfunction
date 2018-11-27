##############################
### フラワーギフト発動
##############################

###威力算出
execute if score @s ModeSkill matches 41031 run data merge entity @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[FlowerGift,FlowerGift1]}
execute if score @s ModeSkill matches 41032 run data merge entity @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[FlowerGift,FlowerGift2]}
execute if score @s ModeSkill matches 41033 run data merge entity @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[FlowerGift,FlowerGift3]}
execute if score @s ModeSkill matches 41034 run data merge entity @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[FlowerGift,FlowerGift4]}

###---演出---Start
particle minecraft:item minecraft:peony ~ ~1 ~ 1 0.2 1 0.08 50 force @a[tag=ShowParticles]
playsound minecraft:entity.zombie.converted_to_drowned master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.elder_guardian.ambient_land master @a[distance=..16] ~ ~ ~ 0.3 0
playsound minecraft:entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:item.trident.riptide_3 master @a[distance=..16] ~ ~ ~ 1 1.5
###---演出---End
