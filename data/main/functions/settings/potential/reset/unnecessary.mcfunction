##############################
### キャパシティポイントリセット不必要
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
tellraw @s ["",{"text":" 潜在能力は既に解除されています。","color":"green"}]

### キャンセル扱いにする
scoreboard players set @s PotentialTrigger 199
