
###クリティカル発生増加確認

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
tellraw @s ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sを %3$s%% 引き上げます。","with":[{"text":"2","color":"gold"},{"translate":"クリティカル発生確率"},{"text":"1","color":"green"}]}]
tellraw @s ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 121"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]

scoreboard players enable @s PotentialTrigger
