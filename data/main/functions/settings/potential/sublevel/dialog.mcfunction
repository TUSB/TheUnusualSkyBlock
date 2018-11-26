##############################
### サブジョブ引き上げ確認
##############################

scoreboard players operation $SubLevel Global = @s SubLevel
scoreboard players add $SubLevel Global 1

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
tellraw @s ["",{"translate":" キャパシティポイントを %1$s 消費して、\n 他職で覚えたスキルの使用上限を %2$sLV 引き上げます。","with":[{"text":"2","color":"gold"},{"text":"1","color":"green"}]}]
tellraw @s ["",{"translate":" ❖他の職業で覚えたスキルのうち、 %1$s レべルまでのスキルが設定できます。","with":[{"score":{"name":"$SubLevel","objective":"Global"},"color":"green"}]}]
tellraw @s [""," よろしいですか？  ",{"text":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 122"}},"  ",{"text":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]

scoreboard players enable @s PotentialTrigger
