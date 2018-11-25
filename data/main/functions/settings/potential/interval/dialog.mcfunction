##############################
### スキル使用不可時間軽減確認
##############################

tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s ["",{"translate":" キャパシティポイントを %1$s 消費して、\n スキル使用不可時間を %2$s%% 引き下げます。","with":[{"text":"1","color":"gold"},{"text":"1","color":"green"}]}]
tellraw @s [""," よろしいですか？  ",{"text":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 112"}}]

scoreboard players enable @s PotentialTrigger
