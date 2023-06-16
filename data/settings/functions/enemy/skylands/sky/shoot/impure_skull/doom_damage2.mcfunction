#Function
tag @s add NowTarget
function score_damage:api/attack
#ランダムで特殊デバフ以外のデバフをかける(重複あり)
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run effect give @s slowness 25 3 true
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run effect give @s mining_fatigue 25 3 true
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run effect give @s hunger 25 3 true
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run effect give @s weakness 25 3 true
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run effect give @s poison 25 3 true
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run effect give @s wither 25 3 true
