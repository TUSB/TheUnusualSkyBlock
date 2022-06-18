##############################
### 取引の印版
##############################

execute if score _ _ matches 32.. run particle minecraft:happy_villager ~ ~0.4 ~ 0.3 0.3 0.3 1 4 force @a[tag=ShowParticles]
execute if score _ _ matches 32.. run playsound minecraft:entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 0.7 0.5
execute unless score _ _ matches 32.. run playsound minecraft:block.lever.click master @a[distance=..16] ~ ~ ~ 1 1
