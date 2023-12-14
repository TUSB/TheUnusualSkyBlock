
execute store result score _ _ if entity @a

execute if data storage main: difficult{world:"casual"} run tellraw @a ["",{"translate":"既に%1$sを選択しています。","with":[{"translate":"カジュアル","color":"#FF2A2A"}]}]
execute unless data storage main: difficult.change_to unless data storage main: difficult{world:"casual"} run scoreboard players set $World ChangeDifficulty 30
execute unless data storage main: difficult.change_to unless data storage main: difficult{world:"casual"} if score _ _ matches 1 run scoreboard players set $World ChangeDifficulty 10
execute unless data storage main: difficult.change_to unless data storage main: difficult{world:"casual"} run tellraw @a ["",{"translate":"難易度を%1$sへ変更する。","with":[{"translate":"カジュアル","color":"#FF2A2A"}]}," ",{"translate":"→拒否する","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ChangeDifficulty set 1"}}]
execute unless data storage main: difficult.change_to if data storage main: difficult{world:"expert"} run tellraw @a ["",{"translate":"%1$sから難易度を変更すると、%1$sへ戻せません！","bold":true,"with":[{"translate":"エキスパート","color":"#932AFF"}]}]
execute unless data storage main: difficult.change_to unless data storage main: difficult{world:"casual"} run tellraw @a ["",{"translate":"変更まで残り%1$s秒……","with":[{"score":{"name":"$World","objective":"ChangeDifficulty"}}]}]
execute unless data storage main: difficult.change_to unless data storage main: difficult{world:"casual"} run data modify storage main: difficult.change_to set value "casual"

scoreboard players enable @a ChangeDifficulty