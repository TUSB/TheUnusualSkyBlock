#> player:pray

tag @s remove Pray

# 交易島が未攻略なら無視
execute unless data storage area: capture.skylands.002 run return fail

scoreboard players enable @s kill
tellraw @s [{"translate":"[最終手段]","bold":true,"color":"gray"}," ",{"translate":"祈りを捧げる","color":"dark_aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger kill set 1"},"hoverEvent":{"action":"show_text","contents":[{"translate":"/kill","color":"red"}]}}]
