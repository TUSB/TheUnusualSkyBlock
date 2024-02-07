
### サヨナラ 人参棒でトグル

scoreboard players set _ _ 0
execute if entity @a[distance=..32,scores={Burst=0..,Job=7}] run scoreboard players remove _ Level 1
execute if score @s SayonaraLevel = _ Level store success score _ _ run scoreboard players reset @s SayonaraLevel
execute unless score @s SayonaraLevel = _ Level if score _ _ matches 0 run scoreboard players operation @s SayonaraLevel = _ Level
#解除時

#演出
function makeup:skill/act/ninja/sayonara/toggle
