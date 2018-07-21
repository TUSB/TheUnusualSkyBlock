##############################
### フラワーギフト発動
##############################

###威力算出
execute if score @s ModeSkill matches 41031 run data merge entity @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[FlowerGift,FlowerGift1]}
execute if score @s ModeSkill matches 41032 run data merge entity @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[FlowerGift,FlowerGift2]}
execute if score @s ModeSkill matches 41033 run data merge entity @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[FlowerGift,FlowerGift3]}
execute if score @s ModeSkill matches 41034 run data merge entity @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[FlowerGift,FlowerGift4]}

###---演出---Start
###---演出---End
