##############################
### 兵糧丸発動
##############################

execute if score @s SupportSkill matches 22051 run effect give @s minecraft:saturation 1 1
execute if score @s SupportSkill matches 22051 run function skill_manager:white_mage/clear/cure/level2

execute if score @s SupportSkill matches 22052 run effect give @s minecraft:saturation 1 5
execute if score @s SupportSkill matches 22052 run function skill_manager:white_mage/clear/cure/level3

###---演出---Start
playsound minecraft:entity.generic.eat master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.player.burp master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~0.5 ~ 0.7 0.5 0.7 0 20 force
execute rotated ~ 0 run summon minecraft:item ^ ^1.0 ^1 {NoGravity:1b,Item:{id:"minecraft:mushroom_stew",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5980,PickupDelay:32767}
execute rotated ~ 0 run particle minecraft:item minecraft:mushroom_stew ^ ^1.3 ^1 0 0 0 0.1 20 force
###---演出---End
