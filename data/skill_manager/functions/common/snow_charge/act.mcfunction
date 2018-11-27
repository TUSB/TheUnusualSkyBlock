##############################
### スノウチャージ発動
##############################

###---演出---Start
particle minecraft:firework ~ ~2 ~ 1 2 1 0 150 force @a[tag=ShowParticles]
playsound minecraft:block.bubble_column.whirlpool_inside master @a[distance=..16] ~ ~ ~ 0.6 0
playsound minecraft:entity.firework_rocket.twinkle_far master @a[distance=..16] ~ ~ ~ 1 1.6
playsound minecraft:entity.mule.chest master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 1.2
###---演出---End

execute if score @s SupportSkill matches 82011 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:30,Tags:[CooldownRequired,Snow_Charge],Motion:[0d,0.5d,0d],Pumpkin:false,Attributes:[{Name:generic.followRange,Base:0}],ActiveEffects:[{Id:25,Amplifier:0,Duration:10},{Id:28,Amplifier:0,Duration:30}],DeathLootTable:"minecraft:empty",Passengers:[{id:"item",Item:{id:"minecraft:snowball",Count:16b},PickupDelay:30}]}
execute if score @s SupportSkill matches 82012 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:30,Tags:[CooldownRequired,Snow_Charge],Motion:[0d,0.5d,0d],Pumpkin:false,Attributes:[{Name:generic.followRange,Base:0}],ActiveEffects:[{Id:25,Amplifier:0,Duration:10},{Id:28,Amplifier:0,Duration:30}],DeathLootTable:"minecraft:empty",Passengers:[{id:"item",Item:{id:"minecraft:snowball",Count:64b},PickupDelay:30}]}
