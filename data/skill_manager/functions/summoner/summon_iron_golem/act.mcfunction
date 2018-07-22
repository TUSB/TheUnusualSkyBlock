##############################
### サモンＰ：ゴーレム
##############################

summon minecraft:iron_golem ~ ~ ~ {Team:Friendly,Health:120f,ActiveEffects:[{Id:11b,Duration:2147483647,Amplifier:2b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Base:120d},{Name:"generic.movementSpeed",Base:0.4d}],ArmorItems:[{},{},{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:2010s}]}},{}]}

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
