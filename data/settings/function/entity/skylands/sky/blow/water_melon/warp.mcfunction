#Function
ride @s dismount
# 交易島 or ガスト島 テレポート
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 in area:skylands run spreadplayers 7.5 -565.5 0 12 under 22 false @s
execute if score _ Random matches 1 in area:skylands run spreadplayers -76.5 -600.5 0 10 under 32 false @s
