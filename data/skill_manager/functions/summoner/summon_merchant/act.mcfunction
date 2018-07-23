##############################
### サモンＥ：マーチャント
##############################

summon minecraft:villager ~ ~ ~ {Health:0.1f,Attributes:[{Name:"generic.maxHealth",Base:0.1d},{Name:"generic.movementSpeed",Base:0.0d}],Offers:{Recipes:[{maxUses:1000000000,uses:0,rewardExp:false,buy:{id:"minecraft:white_wool",Count:1b},buyB:{id:"minecraft:white_wool",Count:1b},sell:{id:"minecraft:emerald",Count:1b}}]}}
execute if score @s SupportSkill matches 62062 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
