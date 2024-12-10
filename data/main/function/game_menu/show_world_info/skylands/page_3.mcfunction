#> main:game_menu/show_world_info/skylands/page_3
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[%1$s]","color":"#00ff80","with":[{"translate":"一覧に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#ff8040","with":[{"translate":"最初に戻る"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#ff8080","with":[{"translate":"前のページ"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 211"}},{"translate":" / ","color": "white"},{"translate":"[%1$s]","color":"#60ffff","with":[{"translate":"次のページ"}],"clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 213"}}]
tellraw @s [" ",{"translate":"[%1$s]","with":[{"translate":"TIPS"}]}," ",{"translate": "%1$s：未攻略","with":[{"translate":"(空白)","color":"white"}]}," / ",{"translate": "%1$s：攻略済","with":[{"text":"1","font":"ender_eye"}]}]
tellraw @s [{"translate":"[%1$s]","color":"#b7b7b7","with":[[" ",{"translate":"通常世界"}," "]]},{"text":" 3/5","color":"#FFFFFF"}]
tellraw @s ""
tellraw @s [{"translate":"蜘蛛島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{023:0}.023","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{023:1}.023","font":"ender_eye"}]
tellraw @s [{"translate":"本の神殿","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{024:0}.024","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{024:1}.024","font":"ender_eye"}]
tellraw @s [{"translate":"逆さ家島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{025:0}.025","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{025:1}.025","font":"ender_eye"}]
tellraw @s [{"translate":"豪邸島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{026:0}.026","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{026:1}.026","font":"ender_eye"}]
tellraw @s [{"translate":"ケーキ島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{027:0}.027","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{027:1}.027","font":"ender_eye"}]
tellraw @s [{"translate":"たけのこ島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{028:0}.028","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{028:1}.028","font":"ender_eye"}]
tellraw @s [{"translate":"大釜とホッパー島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{029:0}.029","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{029:1}.029","font":"ender_eye"}]
tellraw @s [{"translate":"製図台島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{030:0}.030","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{030:1}.030","font":"ender_eye"}]
tellraw @s [{"translate":"海賊船","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{031:0}.031","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{031:1}.031","font":"ender_eye"}]
tellraw @s [{"translate":"スケルトン's島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{032:0}.032","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{032:1}.032","font":"ender_eye"}]
tellraw @s [{"translate":"エンダー's島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{033:0}.033","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{033:1}.033","font":"ender_eye"}]

tellraw @s ""
tellraw @s ""
tellraw @s "====================================================="