##############################
### ゾンビウォーリア爆破召喚 - Event  
##############################

execute if entity @a[distance=..8,gamemode=!creative,gamemode=!spectator] facing entity @a[distance=..8,gamemode=!creative,gamemode=!spectator,sort=nearest] eyes run summon minecraft:creeper ^ ^ ^3 {CustomName:"\"ゾンビウォーリア\"",Invulnerable:true,AbsorptionAmount:99f,Silent:true,NoAI:true,ExplosionRadius:7b,Fuse:0s,ignited:true}
scoreboard players set $Heal Global 20000
execute store result score $AbsorptionAmount Global run data get entity @s AbsorptionAmount 100
scoreboard players operation $AbsorptionAmount Global += $Heal Global
scoreboard players operation $AbsorptionAmount Global < @s MobMaxHealth
execute store result entity @s AbsorptionAmount int 0.01 run scoreboard players get $AbsorptionAmount Global
playsound minecraft:entity.bat.hurt master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.generic.drink master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:ambient.underwater.exit master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 1 15 force @a[tag=ShowParticles]
execute anchored eyes run particle minecraft:portal ^ ^ ^ 0 0 0 1 30 force @a[tag=ShowParticles]
execute anchored eyes run particle minecraft:falling_dust minecraft:red_wool ^ ^0.2 ^ 0.5 0.5 0.5 1 15 force @a[tag=ShowParticles]
