scoreboard players enable @a[tag=Pray,score_Job_min=1] kill
tellraw @a[tag=Pray,score_Job_min=1] [{"text":"[最終手段] ","bold":true,"color":"gray"},{"text":"祈りを捧げる","color":"dark_aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger kill set 1"},"hoverEvent":{"action":"show_text","value":{"text":"/kill","color":"red"}}}]
scoreboard players tag @a[tag=Pray,score_Job_min=1] remove Pray
