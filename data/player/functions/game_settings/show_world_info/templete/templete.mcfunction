#> player:game_settings/show_world_info/templete/templete
#
#> ワールド情報テンプレート
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}}]
tellraw @s [{"text": "[TIPS] "},{"text":"0","font":"ender_eye","color":"gray"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"1","font":"ender_eye"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ディメンション名]","color":"#ffffff"}]
execute store result score _ Calc run data get storage area: capture.area_name
execute store result score # _ run function calc:island/get_total/area_name
tellraw @s [{"translate":"エリア攻略数"}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]
tellraw @s ""
tellraw @s [{"translate":"フレームの場所","color":"#ffffff"},{"translate":" : ","color": "white"} ,{"storage":"area:","nbt":"capture.area_name{000:0}.000","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.area_name{000:1}.000","font":"ender_eye","color":"#ffffff"}]

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