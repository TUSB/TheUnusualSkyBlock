#> main:game_menu/show_world_info/flying_island/
#
#> 飛空島詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[%1$s]","color":"#00ff80","with":[{"translate":"一覧に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#ff8040","with":[{"translate":"最初に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 220"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#808080","with":[{"translate":"前のページ"}]},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#808080","with":[{"translate":"次のページ"}]}]
tellraw @s [" ",{"translate":"[%1$s]","with":[{"translate":"TIPS"}]}," ",{"translate": "%1$s：未攻略","with":[{"translate":"(空白)","color":"white"}]}," / ",{"translate": "%1$s：攻略済","with":[{"text":"1","font":"ender_eye"}]}]
tellraw @s [{"translate":"[%1$s]","color":"#7cd0ba","with":[["  ",{"translate":"飛空島"},"  "]]}]
execute store result score _ Calc run data get storage area: capture.flying_island
execute store result score # _ run function calc:island/get_total/flying_island
tellraw @s [{"translate":"エリア攻略数 : %1$s/%2$s","with":[{"score":{"name": "_","objective": "Calc"}},{"score":{"name": "#","objective": "_"}}]}]
tellraw @s ""
tellraw @s [{"translate":"TUSB神社","color":"#ff5353"},{"translate":" : ","color": "white"} ,{"storage":"area:","nbt":"capture.flying_island{046:0}.046","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.flying_island{046:1}.046","font":"ender_eye","color":"#ffffff"}]
tellraw @s [{"translate":"飛空島道場","color":"#ffffff"},{"translate":" : ","color": "white"},{"storage":"area:","nbt":"capture.flying_island{047:0}.047","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.flying_island{047:1}.047","font":"ender_eye"}]

tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s "====================================================="