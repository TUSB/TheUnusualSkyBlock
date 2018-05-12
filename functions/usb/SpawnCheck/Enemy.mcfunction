scoreboard players tag @s add Poofable
###燃えるかどうか
scoreboard players tag @s add BurnableEnemy
scoreboard players tag @s[type=minecraft:zombie_pigman] remove BurnableEnemy
scoreboard players tag @s[type=minecraft:blaze] remove BurnableEnemy
scoreboard players tag @s[type=minecraft:ghast] remove BurnableEnemy
scoreboard players tag @s[type=minecraft:magma_cube] remove BurnableEnemy
scoreboard players tag @s[type=minecraft:wither] remove BurnableEnemy
scoreboard players tag @s[type=minecraft:wither_skeleton] remove BurnableEnemy
scoreboard players tag @s[type=minecraft:vex] remove BurnableEnemy
###生きているかどうか
scoreboard players tag @s add LivingEnemy
scoreboard players tag @s[type=minecraft:skeleton] remove LivingEnemy
scoreboard players tag @s[type=minecraft:wither_skeleton] remove LivingEnemy
scoreboard players tag @s[type=minecraft:stray] remove LivingEnemy
scoreboard players tag @s[type=minecraft:zombie] remove LivingEnemy
scoreboard players tag @s[type=minecraft:zombie_villager] remove LivingEnemy
scoreboard players tag @s[type=minecraft:husk] remove LivingEnemy
scoreboard players tag @s[type=minecraft:zombie_horse] remove LivingEnemy
scoreboard players tag @s[type=minecraft:skeleton_horse] remove LivingEnemy
scoreboard players tag @s[type=minecraft:wither] remove LivingEnemy
###スライム系かどうか
scoreboard players tag @s[type=minecraft:slime] add Slimy
scoreboard players tag @s[type=minecraft:magma_cube] add Slimy
###モブAEC乗せ判定
scoreboard players tag @s add HasCloud {Passengers:[{id:minecraft:area_effect_cloud}]}
execute @s[tag=HasCloud] ~ ~ ~ /entitydata @e[dy=5,type=minecraft:area_effect_cloud,tag=!SpawnChecked] {Tag:[MobCloud],Duration:28,Age:5,WaitTime:5,DurationOnUse:0,RadiusOnUse:0f,RadiusPerTick:0f,ReapplicationDelay:0}
scoreboard players tag @s[tag=HasCloud] remove HasCloud
###匠早く
scoreboard players tag @s[type=minecraft:creeper] add LongFuse {Fuse:30s}
entitydata @s[tag=LongFuse] {Fuse:15s}
scoreboard players tag @s[tag=LongFuse] remove LongFuse
###耐性付与
effect @s minecraft:resistance 1000000 2 true
###ゾンピグ敵対化
entitydata @s[type=minecraft:zombie_pigman] {Anger:32767s}
###村人ニート化
entitydata @s[type=Villager] {Profession:5,Career:1,CareerLevel:100,Offers:{Recipes:[]}}
