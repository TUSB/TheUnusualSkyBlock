##############################
### 消費ＭＰ軽減確認
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
tellraw @s ["",{"translate":" キャパシティポイントを %1$s 消費して、\n 他の職業のレベルを上げられます。","with":[{"text":"1","color":"gold"}]}]
tellraw @s [""," 未実装です。  ",{"text":"はい","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 131"}},"  ",{"text":"いいえ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 199"}}]

scoreboard players enable @s PotentialTrigger
