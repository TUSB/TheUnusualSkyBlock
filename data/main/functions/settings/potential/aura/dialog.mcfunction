##############################
### オーラ継続時間延長確認
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
tellraw @s ["",{"translate":" キャパシティポイントを %1$s 消費して、\n オーラ継続時間を %2$s%% 引き上げます。","with":[{"text":"1","color":"gold"},{"text":"1","color":"green"}]}]
tellraw @s [""," よろしいですか？  ",{"text":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 113"}},"  ",{"text":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]

scoreboard players enable @s PotentialTrigger
