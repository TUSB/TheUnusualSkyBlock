
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
tellraw @s [""]

tellraw @s[scores={PotentialTrigger=41}] ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sのレベルを %3$sLV 引き上げます。","with":[{"text":"1","color":"gold"},{"translate":"剣士"},{"text":"1","color":"green"}]}]
tellraw @s[scores={PotentialTrigger=42}] ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sのレベルを %3$sLV 引き上げます。","with":[{"text":"1","color":"gold"},{"translate":"忍者"},{"text":"1","color":"green"}]}]
tellraw @s[scores={PotentialTrigger=43}] ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sのレベルを %3$sLV 引き上げます。","with":[{"text":"1","color":"gold"},{"translate":"狩人"},{"text":"1","color":"green"}]}]
tellraw @s[scores={PotentialTrigger=44}] ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sのレベルを %3$sLV 引き上げます。","with":[{"text":"1","color":"gold"},{"translate":"白魔導士"},{"text":"1","color":"green"}]}]
tellraw @s[scores={PotentialTrigger=45}] ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sのレベルを %3$sLV 引き上げます。","with":[{"text":"1","color":"gold"},{"translate":"黒魔導士"},{"text":"1","color":"green"}]}]
tellraw @s[scores={PotentialTrigger=46}] ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sのレベルを %3$sLV 引き上げます。","with":[{"text":"1","color":"gold"},{"translate":"召喚士"},{"text":"1","color":"green"}]}]
tellraw @s[scores={PotentialTrigger=47}] ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sのレベルを %3$sLV 引き上げます。","with":[{"text":"1","color":"gold"},{"translate":"絡繰士"},{"text":"1","color":"green"}]}]
tellraw @s[scores={PotentialTrigger=48}] ["",{"translate":" キャパシティポイントを %1$s 消費して、\n %2$sのレベルを %3$sLV 引き上げます。","with":[{"text":"1","color":"gold"},{"translate":"怪盗"},{"text":"1","color":"green"}]}]

tellraw @s[scores={PotentialTrigger=41}] ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 141"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]
tellraw @s[scores={PotentialTrigger=42}] ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 142"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]
tellraw @s[scores={PotentialTrigger=43}] ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 143"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]
tellraw @s[scores={PotentialTrigger=44}] ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 144"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]
tellraw @s[scores={PotentialTrigger=45}] ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 145"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]
tellraw @s[scores={PotentialTrigger=46}] ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 146"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]
tellraw @s[scores={PotentialTrigger=47}] ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 147"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]
tellraw @s[scores={PotentialTrigger=48}] ["",{"translate":" よろしいですか？  "},{"translate":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 148"}},"  ",{"translate":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]

scoreboard players enable @s PotentialTrigger
