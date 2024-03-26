#> player:game_settings/show_world_info/flying_island/
#
#> 飛空島詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 220"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}}]
tellraw @s [{"text": "[TIPS] "},{"text":"(空白)","color":"white"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"1","font":"ender_eye"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 飛 空 島 ]","color":"#7cd0ba"}]
execute store result score _ Calc run data get storage area: capture.flying_island
execute store result score # _ run function calc:island/get_total/flying_island
tellraw @s [{"translate":"エリア攻略数"}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]
tellraw @s ""
tellraw @s [{"translate":"TUSB神社","color":"#ff5353"},{"translate":" : ","color": "white"} ,{"storage":"area:","nbt":"capture.flying_island{046:0}.046","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.flying_island{046:1}.046","font":"ender_eye"}]
tellraw @s [{"translate":"飛空島道場","color":"#ffffff"},{"translate":" : ","color": "white"},{"storage":"area:","nbt":"capture.flying_island{047:0}.047","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.flying_island{047:1}.047","font":"ender_eye"}]

tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]
tellraw @s "====================================================="