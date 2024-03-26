#> player:game_settings/show_world_info/skylands/page_5
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 213"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}}]
tellraw @s [{"text": "[TIPS] "},{"text":"(空白)","color":"white"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"1","font":"ender_eye"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 通常世界 ]","color":"#b7b7b7"},{"translate":" 5/5","color":"#FFFFFF"}]
tellraw @s ""
tellraw @s [{"translate":"エンドポータル島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{045:0}.045","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{045:1}.045","font":"ender_eye","color": "white"}]
tellraw @s [{"translate":"混沌群島","color":"#b76fff"}," : ",{"storage":"area:","nbt":"capture.skylands{046:0}.046","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{046:1}.046","font":"ender_eye","color": "white"}]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""

tellraw @s ""
tellraw @s ""
tellraw @s "====================================================="