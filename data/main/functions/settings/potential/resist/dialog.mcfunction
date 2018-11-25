##############################
### 免疫最低値引き上げ確認
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
tellraw @s ["",{"translate":" キャパシティポイントを %1$s 消費して、\n 免疫能力の発揮確率を %2$s%% 引き上げます。","with":[{"text":"1","color":"gold"},{"text":"1","color":"green"}]}]
tellraw @s [""," よろしいですか？  ",{"text":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 114"}}]

scoreboard players enable @s PotentialTrigger
