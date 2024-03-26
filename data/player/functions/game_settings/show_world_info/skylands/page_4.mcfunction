#> player:game_settings/show_world_info/skylands/page_4
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 212"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 214"}}]
tellraw @s [{"text": "[TIPS] "},{"text":"(空白)","color":"white"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"1","font":"ender_eye"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 通常世界 ]","color":"#b7b7b7"},{"translate":" 4/5","color":"#FFFFFF"}]
tellraw @s ""
tellraw @s [{"translate":"神木島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{034:0}.034","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{034:1}.034","font":"ender_eye","color": "white"}]
tellraw @s [{"translate":"銭湯島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{035:0}.035","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{035:1}.035","font":"ender_eye","color": "white"}]
tellraw @s [{"translate":"エンダーチェスト島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{036:0}.036","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{036:1}.036","font":"ender_eye"}]
tellraw @s [{"translate":"エンチャントテーブル島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{037:0}.037","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{037:1}.037","font":"ender_eye"}]
tellraw @s [{"translate":"処刑塔","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{038:0}.038","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{038:1}.038","font":"ender_eye","color": "white"}]
tellraw @s [{"translate":"魔女の館島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{039:0}.039","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{039:1}.039","font":"ender_eye","color": "white"}]
tellraw @s [{"translate":"廃病院島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{040:0}.040","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{040:1}.040","font":"ender_eye","color": "white"}]
tellraw @s [{"translate":"深淵島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{041:0}.041","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{041:1}.041","font":"ender_eye","color": "white"}]
tellraw @s [{"translate":"死島(なれんじ城)","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{042:0}.042","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{042:1}.042","font":"ender_eye","color": "white"}]
tellraw @s [{"translate":"隔離所(れい城)","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{043:0}.043","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{043:1}.043","font":"ender_eye"}]
tellraw @s [{"translate":"セキュリティーポール島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{044:0}.044","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{044:1}.044","font":"ender_eye"}]

tellraw @s ""
tellraw @s ""
tellraw @s "====================================================="