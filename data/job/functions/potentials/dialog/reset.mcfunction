
###潜在能力リセット確認

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
tellraw @s ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sを 全て解除します。","with":[{"text":"1","color":"gold"},{"translate":"潜在能力"}]}]
tellraw @s ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 132"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]

scoreboard players enable @s PotentialTrigger
