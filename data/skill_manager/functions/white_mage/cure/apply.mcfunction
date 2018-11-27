##############################
### ケアル適用
##############################

scoreboard players operation @s HealthHealing += $Cure Global

###---演出---Start
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.note_block.chime master @a[distance=..16] ~ ~ ~ 1 1.2
particle minecraft:heart ~ ~0.1 ~ 0.7 0.1 0.7 0 10 force @a[tag=ShowParticles]
particle minecraft:happy_villager ~ ~0.3 ~ 0.5 0.3 0.5 0 20 force @a[tag=ShowParticles]
###---演出---End
