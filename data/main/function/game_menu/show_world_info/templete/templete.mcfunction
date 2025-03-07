#> main:game_menu/show_world_info/templete/templete
#
#> ワールド情報テンプレート
#
#
# tellraw @s "====================================================="
# tellraw @s [{"translate":"[%1$s]","color":"#00ff80","with":[{"translate":"一覧に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#808080","with":[{"translate":"最初に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#808080","with":[{"translate":"前のページ"}],"clickEvent":{"action": "run_command","value": ""}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#808080","with":[{"translate":"次のページ"}],"clickEvent":{"action": "run_command","value": ""}}]
# tellraw @s [" ",{"translate":"[%1$s]","with":[{"translate":"TIPS"}]}," ",{"translate": "%1$s：未攻略","with":[{"text":"0","font":"ender_eye","color":"gray"}]}," / ",{"translate": "%1$s：攻略済","with":[{"text":"1","font":"ender_eye"}]}]
# tellraw @s [{"translate":"[%1$s]","color":"#ffffff","with":[[" ",{"translate":"ディメンション名"}," "]]}]
# execute store result score _ Calc run data get storage area: capture.area_name
# execute store result score # _ run function calc:island/get_total/area_name
# tellraw @s [{"translate":"エリア攻略数 : %1$s/%2$s","with":[{"score":{"name": "_","objective": "Calc"}},{"score":{"name": "#","objective": "_"}}]}]
# tellraw @s ""
# tellraw @s [{"translate":"フレームの場所","color":"#ffffff"},{"translate":" : ","color": "white"} ,{"storage":"area:","nbt":"capture.area_name{000:0}.000","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.area_name{000:1}.000","font":"ender_eye","color":"#ffffff"}]

# tellraw @s ""
# tellraw @s ""
# tellraw @s ""
# tellraw @s ""
# tellraw @s ""
# tellraw @s ""
# tellraw @s ""
# tellraw @s ""
# tellraw @s ""
# tellraw @s ""
# tellraw @s ""
# tellraw @s "====================================================="