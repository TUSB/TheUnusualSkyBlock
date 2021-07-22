
###サブジョブ引き上げ確認

scoreboard players operation _ SubLevel = @s SubLevel
scoreboard players add _ SubLevel 1

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
tellraw @s ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sを %3$sLV 引き上げます。","with":[{"text":"2","color":"gold"},{"translate":"他職で覚えたスキルの使用上限"},{"text":"1","color":"green"}]}]
tellraw @s ["",{"translate":" ❖他の職業で覚えたスキルのうち、 %1$s レべルまでのスキルが設定できます。","with":[{"score":{"name":"_","objective":"SubLevel"},"color":"green"}]}]
tellraw @s ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 122"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]

scoreboard players enable @s PotentialTrigger
