##############################
### サモンＥ：マーチャント
##############################

summon minecraft:villager ~ ~ ~ {Health:0.1f,Attributes:[{Name:"generic.maxHealth",Base:0.1d},{Name:"generic.movementSpeed",Base:0.0d}],Offers:{Recipes:[{maxUses:1000000000,uses:0,rewardExp:false,buy:{id:"minecraft:white_wool",Count:1b},buyB:{id:"minecraft:white_wool",Count:1b},sell:{id:"minecraft:emerald",Count:1b}}]}}
execute if score @s SupportSkill matches 62062 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.villager.yes master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.villager.yes master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.villager.yes master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:entity_effect ~ ~0.3 ~ 0.6 1 0.6 1 50 force
particle minecraft:witch ~ ~ ~ 0 0 0 1 40 force
summon minecraft:item ^0.6 ^0.3 ^1 {NoGravity:true,Motion:[0d,0.015d,0d],Item:{id:"minecraft:emerald",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5940,PickupDelay:32767}
summon minecraft:item ^0.6 ^0.3 ^-1 {NoGravity:true,Motion:[0d,0.015d,0d],Item:{id:"minecraft:emerald",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5938,PickupDelay:32767}
summon minecraft:item ^1.2 ^0.8 ^ {NoGravity:true,Motion:[0d,-0.015d,0d],Item:{id:"minecraft:emerald",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5936,PickupDelay:32767}
summon minecraft:item ^-0.6 ^0.8 ^1 {NoGravity:true,Motion:[0d,-0.015d,0d],Item:{id:"minecraft:emerald",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5934,PickupDelay:32767}
summon minecraft:item ^-0.6 ^0.8 ^-1 {NoGravity:true,Motion:[0d,-0.015d,0d],Item:{id:"minecraft:emerald",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5932,PickupDelay:32767}
summon minecraft:item ^-1.2 ^0.3 ^ {NoGravity:true,Motion:[0d,0.015d,0d],Item:{id:"minecraft:emerald",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5930,PickupDelay:32767}
###---演出---End
