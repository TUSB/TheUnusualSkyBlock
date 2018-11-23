##############################
### サモンＰ：ゴーレム
##############################

summon minecraft:iron_golem ~ ~0.8 ~ {Motion:[0d,-0.5d,0d],Team:Friendly,Health:120f,ActiveEffects:[{Id:11b,Duration:2147483647,Amplifier:2b,ShowParticles:false},{Id:25b,Duration:18,Amplifier:1b,ShowParticles:true}],Attributes:[{Name:"generic.maxHealth",Base:120d},{Name:"generic.movementSpeed",Base:0.4d}],ArmorItems:[{},{},{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:510s}]}},{}],CustomName:"[\"フレンドリー\"]",CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
execute if score @s SupportSkill matches 62072 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.iron_golem.hurt master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.iron_golem.hurt master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.iron_golem.hurt master @a[distance=..16] ~ ~ ~ 1 0
particle minecraft:entity_effect ~ ~0.5 ~ 0.8 1.5 0.8 1 70 force
particle minecraft:lava ~ ~1 ~ 0.8 1.5 0.8 1 15 force
particle minecraft:item minecraft:iron_chestplate ~ ~3 ~ 1 1 1 0.1 100 force
###---演出---End
