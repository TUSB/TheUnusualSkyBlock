
### フラワーギフト飛翔時

scoreboard players operation _ _ = @s Level
execute as @e[distance=..8,tag=Enemy,tag=!Gifted] at @s run function skill:act/white_mage/flower_gift/apply

#演出
function makeup:skill/act/white_mage/flower_gift/tick
