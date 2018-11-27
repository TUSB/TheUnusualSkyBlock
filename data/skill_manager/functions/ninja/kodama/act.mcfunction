##############################
### 呼魂発動
##############################

###---演出---Start
particle minecraft:portal ~ ~ ~ 0 0 0 1 500 force @a[tag=ShowParticles]
particle minecraft:enchant ~ ~1 ~ 0 0 0 3 500 force @a[tag=ShowParticles]
execute if score @s SupportSkill matches 22071 positioned as @e[distance=..20,type=item,nbt={Invulnerable:false}] run particle minecraft:portal ~ ~ ~ 0 0 0 0.2 50 force @a[tag=ShowParticles]
execute if score @s SupportSkill matches 22072 positioned as @e[distance=..30,type=item,nbt={Invulnerable:false}] run particle minecraft:portal ~ ~ ~ 0 0 0 0.2 50 force @a[tag=ShowParticles]
playsound minecraft:entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 1 0.5
playsound minecraft:entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select master @a[distance=..32] ~ ~ ~ 1 2
###---演出---End

execute if score @s SupportSkill matches 22071 run tp @e[distance=..20,type=item,nbt={Invulnerable:false}] ~ ~ ~
execute if score @s SupportSkill matches 22072 run tp @e[distance=..30,type=item,nbt={Invulnerable:false}] ~ ~ ~
