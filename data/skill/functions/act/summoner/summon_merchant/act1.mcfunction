##############################
### サモンＥ：マーチャント
##############################

summon minecraft:villager ~ ~ ~ {Health:0.1f,Attributes:[{Name:"generic.max_health",Base:0.1d},{Name:"generic.movement_speed",Base:0.0d}],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:50}],VillagerData:{level:99,profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:1000000,uses:0,xp:0,buy:{id:"minecraft:white_wool",Count:1b},buyB:{id:"minecraft:white_wool",Count:1b},sell:{id:"minecraft:emerald",Count:1b}}]}}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_merchant/act1
