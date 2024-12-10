#> main:game_menu/show_world_info/all
tellraw @s "====================================================="

tellraw @s ""
tellraw @s [{"translate":"現在のVersion"}," : ",{"translate":"v13.%1$s.%2$s.α2","color":"green","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"}]}]
execute if data storage main: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#99CC33"}]
execute if data storage main: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage main: difficult{world:"expert"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"エキスパート","color":"#932AFF"}]
execute if data storage main: difficult{world: "debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""
tellraw @s [{"text": "[TIPS] "},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""
#クリア数抽出
execute store result score _ Calc run function calc:island/clear_count
execute store result score # _ run function #calc:island/get_total
execute store result score # Calc run function calc:island/clear_count_percent
tellraw @s [{"translate":"島 攻略率"}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}},"(",{"score":{"name": "#","objective": "Calc"}},"%)"]

# 210-219: 通常世界
execute store result score _ Calc run data get storage area: capture.skylands
execute store result score # _ run function calc:island/get_total/skylands
tellraw @s [{"translate":"通常世界","color":"#b7b7b7","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

# 220-229: 飛空島
execute store result score _ Calc run data get storage area: capture.flying_island
execute store result score # _ run function calc:island/get_total/flying_island
tellraw @s [{"translate":"飛空島","color":"#7cd0ba","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 220"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]

tellraw @s "====================================================="

# TODO
# 各ディメンション内の島別攻略を表示