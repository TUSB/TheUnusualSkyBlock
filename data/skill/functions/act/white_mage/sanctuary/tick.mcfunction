##############################
### サンクチュアリtick
##############################

scoreboard players operation _ Level = @s Level
execute if score $Tick Count matches 1 as @e[predicate=entity:friendly,distance=..8] run function skill:act/white_mage/sanctuary/tick_friendly
execute as @e[tag=Enemy,tag=!SanctuaryApplied,distance=..8] at @s run function skill:act/white_mage/sanctuary/apply_enemy

tp @s ~ ~0.003 ~ ~5 ~

#演出
function makeup:skill/act/white_mage/sanctuary/tick
