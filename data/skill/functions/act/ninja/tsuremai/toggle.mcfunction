##############################
### 連舞 人参棒でトグル
##############################

scoreboard players set _ _ 0
#execute if entity @s[tag=からくりオーラ] run scoreboard players remove _ Level
execute if score @s TsuremaiLevel = _ Level store success score _ _ run scoreboard players reset @s TsuremaiLevel
execute unless score @s TsuremaiLevel = _ Level if score _ _ matches 0 run scoreboard players operation @s TsuremaiLevel = _ Level
#演出
function makeup:skill/act/ninja/tsuremai/toggle
