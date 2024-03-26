#> player:game_settings/show_world_info/skylands/page_2
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 212"}}]
tellraw @s [{"text": "[TIPS] "},{"text":"(空白)","color":"white"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"1","font":"ender_eye"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 通常世界 ]","color":"#b7b7b7"},{"translate":" 2/5","color":"#FFFFFF"}]
tellraw @s ""
tellraw @s [{"translate":"花火クリーパー島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{012:0}.012","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{012:1}.012","font":"ender_eye"}]
tellraw @s [{"translate":"墓場島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{013:0}.013","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{013:1}.013","font":"ender_eye"}]
tellraw @s [{"translate":"エメラルド島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{014:0}.014","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{014:1}.014","font":"ender_eye"}]
tellraw @s [{"translate":"遺跡島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{015:0}.015","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{015:1}.015","font":"ender_eye"}]
tellraw @s [{"translate":"オアシス島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{016:0}.016","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{016:1}.016","font":"ender_eye"}]
tellraw @s [{"translate":"スティーブ島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{017:0}.017","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{017:1}.017","font":"ender_eye"}]
tellraw @s [{"translate":"ハートを射抜く島(燃える愛の島)","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{018:0}.018","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{018:1}.018","font":"ender_eye"}]
tellraw @s [{"translate":"かまど島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{019:0}.019","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{019:1}.019","font":"ender_eye"}]
tellraw @s [{"translate":"ずたぼろ亭","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{020:0}.020","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{020:1}.020","font":"ender_eye"}]
tellraw @s [{"translate":"かぼちゃ島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{021:0}.021","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{021:1}.021","font":"ender_eye"}]
tellraw @s [{"translate":"五重の塔","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{022:0}.022","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{022:1}.022","font":"ender_eye"}]

tellraw @s ""
tellraw @s ""
tellraw @s "====================================================="