#> main:game_menu/show_world_info/skylands/page_1
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[%1$s]","color":"#00ff80","with":[{"translate":"一覧に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#ff8040","with":[{"translate":"最初に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#808080","with":[{"translate":"前のページ"}]},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#60ffff","with":[{"translate":"次のページ"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 211"}}]
tellraw @s [" ",{"translate":"[%1$s]","with":[{"translate":"TIPS"}]}," ",{"translate": "%1$s：未攻略","with":[{"translate":"(空白)","color":"white"}]}," / ",{"translate": "%1$s：攻略済","with":[{"text":"1","font":"ender_eye"}]}]
tellraw @s [{"translate":"[%1$s]","color":"#b7b7b7","with":[[" ",{"translate":"通常世界"}," "]]},{"text":" 1/5","color":"#FFFFFF"}]
execute store result score _ Calc run data get storage area: capture.skylands
execute store result score # _ run function calc:island/get_total/skylands
tellraw @s [{"translate":"エリア攻略数 : %1$s/%2$s","with":[{"score":{"name": "_","objective": "Calc"}},{"score":{"name": "#","objective": "_"}}]}]
tellraw @s ""
tellraw @s [{"translate":"ひまわり島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{001:0}.001","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{001:1}.001","font":"ender_eye"}]
tellraw @s [{"translate":"交易島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{002:0}.002","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{002:1}.002","font":"ender_eye"}]
tellraw @s [{"translate":"砂島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{003:0}.003","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{003:1}.003","font":"ender_eye"}]
tellraw @s [{"translate":"ガスト島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{005:0}.005","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{005:1}.005","font":"ender_eye"}]
tellraw @s [{"translate":"シミ島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{006:0}.006","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{006:1}.006","font":"ender_eye"}]
tellraw @s [{"translate":"脅威島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{007:0}.007","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{007:1}.007","font":"ender_eye"}]
tellraw @s [{"translate":"イカ島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{008:0}.008","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{008:1}.008","font":"ender_eye"}]
tellraw @s [{"translate":"舵島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{009:0}.009","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{009:1}.009","font":"ender_eye"}]
tellraw @s [{"translate":"灯台島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{010:0}.010","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{010:1}.010","font":"ender_eye"}]
tellraw @s [{"translate":"夜を司る島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{011:0}.011","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{011:1}.011","font":"ender_eye"}]

tellraw @s ""
tellraw @s ""
tellraw @s "====================================================="