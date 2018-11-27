##############################
### レイズポイント演出
##############################

###---演出---Start
execute if score @s Dimension matches 0..99 run particle minecraft:firework ~ ~3 ~ 0.3 0 0.3 0 5 force @a[tag=ShowParticles]
execute if score @s Dimension matches 100..199 in the_nether run particle minecraft:firework ~ ~3 ~ 0.3 0 0.3 0 5 force @a[tag=ShowParticles]
execute if score @s Dimension matches 200..299 in the_end run particle minecraft:firework ~ ~3 ~ 0.3 0 0.3 0 5 force @a[tag=ShowParticles]
###---演出---End
