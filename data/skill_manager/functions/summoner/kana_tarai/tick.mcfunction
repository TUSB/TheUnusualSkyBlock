##############################
### 金タライヒット
##############################

###---演出---Start
execute if entity @e[dx=0,tag=Mob] run stopsound @a[distance=..32] master minecraft:block.anvil.land
execute if entity @e[dx=0,tag=Mob] as @a[distance=..32] at @s run playsound minecraft:block.anvil.land master @s ~ ~64 ~ 4.25 0.4
execute if entity @e[dx=0,tag=Mob] run particle minecraft:item minecraft:gold_block ~ ~ ~ 0.4 0 0.4 0.1 10 force @a[tag=ShowParticles]
###---演出---End

scoreboard players operation @e[dx=0,tag=Mob] Damage = @s SkillAttribute
execute if entity @e[dx=0,tag=Mob] run kill @s
