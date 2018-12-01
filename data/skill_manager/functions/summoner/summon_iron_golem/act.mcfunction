##############################
### サモンＰ：ゴーレム
##############################

summon minecraft:iron_golem ~ ~0.8 ~ {Motion:[0d,-0.5d,0d],Team:Friendly,Health:200f,ActiveEffects:[{Id:28b,Duration:2147483647,Amplifier:0b,ShowParticles:false},{Id:25b,Duration:18,Amplifier:1b,ShowParticles:true}],Attributes:[{Name:"generic.maxHealth",Base:120d},{Name:"generic.movementSpeed",Base:0.4d},{Name:"generic.followRange",Base:48d}],ArmorItems:[{},{},{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:510s}]}},{}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],CustomName:"[\"フレンドリー\"]",CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
execute if score @s SupportSkill matches 62072 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.iron_golem.hurt master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.iron_golem.hurt master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.iron_golem.hurt master @a[distance=..16] ~ ~ ~ 1 0
particle minecraft:entity_effect ~ ~0.5 ~ 0.8 1.5 0.8 1 70 force @a[tag=ShowParticles]
particle minecraft:lava ~ ~1 ~ 0.8 1.5 0.8 1 15 force @a[tag=ShowParticles]
particle minecraft:item minecraft:iron_chestplate ~ ~3 ~ 1 1 1 0.1 100 force @a[tag=ShowParticles]
###---演出---End
