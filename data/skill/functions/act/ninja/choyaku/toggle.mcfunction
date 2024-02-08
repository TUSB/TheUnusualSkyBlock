##############################
### 跳躍 人参棒でトグル
##############################

scoreboard players set _ _ 0
execute if entity @a[distance=..32,scores={Burst=0..,Job=7}] run scoreboard players remove _ Level 1
execute if score @s ChoyakuLevel = _ Level store success score _ _ run scoreboard players reset @s ChoyakuLevel
execute unless score @s ChoyakuLevel = _ Level if score _ _ matches 0 run scoreboard players operation @s ChoyakuLevel = _ Level
#解除時
execute unless entity @s[scores={ChoyakuLevel=1..}] run scoreboard players reset @s Choyaku
execute unless entity @s[scores={ChoyakuLevel=1..}] run effect clear @s jump_boost
#演出
function makeup:skill/act/ninja/choyaku/toggle
