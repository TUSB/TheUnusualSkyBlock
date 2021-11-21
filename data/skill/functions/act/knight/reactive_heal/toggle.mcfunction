
### リアクティブヒール 人参棒でトグル

scoreboard players set _ _ 0
#execute if entity @s[tag=からくりオーラ] run scoreboard players remove _ Level
execute if score @s ReactiveLevel = _ Level store success score _ _ run scoreboard players reset @s ReactiveLevel
execute unless score @s ReactiveLevel = _ Level if score _ _ matches 0 run scoreboard players operation @s ReactiveLevel = _ Level
#解除時

#演出
function makeup:skill/act/knight/reactive_heal/toggle
