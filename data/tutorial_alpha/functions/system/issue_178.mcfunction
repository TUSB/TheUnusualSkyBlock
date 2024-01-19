#> [バグ] チュートリアル受講状態でチュートリアル外に出ることができる。 #178
# https://github.com/TUSB/TheUnusualSkyBlock/issues/178

# エラーログのため、翻訳不要
tellraw @s {"text":"=== bug Report ===","color":"red","bold":true}
tellraw @s {"text":"チュートリアル状態を検知しました。"}
tellraw @s {"text":"[バグ] チュートリアル受講状態でチュートリアル外に出ることができる。 #178","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/TUSB/TheUnusualSkyBlock/issues/178"}}
tellraw @s ""
tellraw @s {"text":"現在のプレイヤーデータの抜粋"}
# tellraw @s [{"text":"OhMyDat: "},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4]"}]
tellraw @s [{"text":"所持スキル: "},{"entity":"@s","nbt":"Inventory[{tag:{Skill:{}}}].tag.Skill.Skill"}]
tellraw @s [{"text":"職業: "},{"score":{"name":"@s","objective":"Job"}}]
tellraw @s ""
tellraw @s [{"text":"このバグレポートを\n"},{"text":"・TheUnusualSkyBlockリポジトリのissue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/TUSB/TheUnusualSkyBlock/issues/178"}},{"text":"\nもしくは\n"},{"text":"・TUSBの公式Discordサーバー","underlined":true,"clickEvent":{"action":"open_url","value":"https://skyblock.jp/discord"}},{"text":"\nに報告していただけると助かります。"}]
tellraw @s {"text":"=== バグレポート ===","color":"red","bold":true}

function tutorial_alpha:system/backup_pop
execute in area:cloudia run spawnpoint @s -1901 110 -137