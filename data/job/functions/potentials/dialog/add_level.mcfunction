
###他ジョブレベルアップ確認?

tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s ["未実装です。"]
tellraw @s ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sを %3$sLV 引き上げます。","with":[{"text":"1","color":"gold"},{"translate":"他ジョブのレベル"},{"text":"1","color":"green"}]}]
tellraw @s ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 131"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]

scoreboard players enable @s PotentialTrigger
