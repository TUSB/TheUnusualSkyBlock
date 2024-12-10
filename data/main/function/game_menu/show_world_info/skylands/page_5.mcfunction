#> main:game_menu/show_world_info/skylands/page_5
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[%1$s]","color":"#00ff80","with":[{"translate":"一覧に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#ff8040","with":[{"translate":"最初に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#ff8080","with":[{"translate":"前のページ"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 213"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#808080","with":[{"translate":"次のページ"}]}]
tellraw @s [" ",{"translate":"[%1$s]","with":[{"translate":"TIPS"}]}," ",{"translate": "%1$s：未攻略","with":[{"translate":"(空白)","color":"white"}]}," / ",{"translate": "%1$s：攻略済","with":[{"text":"1","font":"ender_eye"}]}]
tellraw @s [{"translate":"[%1$s]","color":"#b7b7b7","with":[[" ",{"translate":"通常世界"}," "]]},{"text":" 5/5","color":"#FFFFFF"}]

tellraw @s ""
tellraw @s [{"translate":"エンドポータル島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{045:0}.045","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{045:1}.045","font":"ender_eye","color": "white"}]
tellraw @s [{"translate":"混沌群島","color":"#ff5353"},{"translate":" : ","color": "white"},{"storage":"area:","nbt":"capture.skylands{046:0}.046","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{046:1}.046","font":"ender_eye","color": "white"}]
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