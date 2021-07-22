
###他ジョブレベルアップ ジョブ選択表示

#全ての職業のレベルを取得
function job:status/get_all_job_level

#表示

tellraw @s [{"translate":" レベルを割り振りたい職業を選択してください。"}]

execute unless score @s Job matches 1 run tellraw @s [{"translate":" ❖%1$s","color":"red","with":[{"translate":"剣士","color":"white"}]},"     ",{"translate":"現在:%1$sLV 割り振り済み:%2$sLV %3$s(%4$sCP)","color":"white","with":[{"score":{"name": "@s","objective": "KnightLv"},"color":"green"},{"score":{"name": "@s","objective": "KnightLv"},"color":"green"},{"translate":"⇧","color":"aqua","bold":true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 41"}},{"text":"-1","color": "gold"}]}," ",{"translate":"割り振り上限:%1$sLV","color":"white","with":[{"storage":"tusb_player:","nbt":"Potentials.AddLevel[1]","color":"green"}]}]
execute unless score @s Job matches 2 run tellraw @s [{"translate":" ❖%1$s","color":"red","with":[{"translate":"忍者","color":"white"}]},"     ",{"translate":"現在:%1$sLV 割り振り済み:%2$sLV %3$s(%4$sCP)","color":"white","with":[{"score":{"name": "@s","objective": "NinjaLv"},"color":"green"},{"score":{"name": "@s","objective": "NinjaLv"},"color":"green"},{"translate":"⇧","color":"aqua","bold":true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 42"}},{"text":"-1","color": "gold"}]}," ",{"translate":"割り振り上限:%1$sLV","color":"white","with":[{"storage":"tusb_player:","nbt":"Potentials.AddLevel[2]","color":"green"}]}]
execute unless score @s Job matches 3 run tellraw @s [{"translate":" ❖%1$s","color":"red","with":[{"translate":"狩人","color":"white"}]},"     ",{"translate":"現在:%1$sLV 割り振り済み:%2$sLV %3$s(%4$sCP)","color":"white","with":[{"score":{"name": "@s","objective": "HunterLv"},"color":"green"},{"score":{"name": "@s","objective": "HunterLv"},"color":"green"},{"translate":"⇧","color":"aqua","bold":true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 43"}},{"text":"-1","color": "gold"}]}," ",{"translate":"割り振り上限:%1$sLV","color":"white","with":[{"storage":"tusb_player:","nbt":"Potentials.AddLevel[3]","color":"green"}]}]
execute unless score @s Job matches 4 run tellraw @s [{"translate":" ❖%1$s","color":"red","with":[{"translate":"白魔導士","color":"white"}]}," ",{"translate":"現在:%1$sLV 割り振り済み:%2$sLV %3$s(%4$sCP)","color":"white","with":[{"score":{"name": "@s","objective": "WhiteMageLv"},"color":"green"},{"score":{"name": "@s","objective": "WhiteMageLv"},"color":"green"},{"translate":"⇧","color":"aqua","bold":true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 44"}},{"text":"-1","color": "gold"}]}," ",{"translate":"割り振り上限:%1$sLV","color":"white","with":[{"storage":"tusb_player:","nbt":"Potentials.AddLevel[4]","color":"green"}]}]
execute unless score @s Job matches 5 run tellraw @s [{"translate":" ❖%1$s","color":"red","with":[{"translate":"黒魔導士","color":"white"}]}," ",{"translate":"現在:%1$sLV 割り振り済み:%2$sLV %3$s(%4$sCP)","color":"white","with":[{"score":{"name": "@s","objective": "BlackMageLv"},"color":"green"},{"score":{"name": "@s","objective": "BlackMageLv"},"color":"green"},{"translate":"⇧","color":"aqua","bold":true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 45"}},{"text":"-1","color": "gold"}]}," ",{"translate":"割り振り上限:%1$sLV","color":"white","with":[{"storage":"tusb_player:","nbt":"Potentials.AddLevel[5]","color":"green"}]}]
execute unless score @s Job matches 6 run tellraw @s [{"translate":" ❖%1$s","color":"red","with":[{"translate":"召喚士","color":"white"}]},"   ",{"translate":"現在:%1$sLV 割り振り済み:%2$sLV %3$s(%4$sCP)","color":"white","with":[{"score":{"name": "@s","objective": "SummonerLv"},"color":"green"},{"score":{"name": "@s","objective": "SummonerLv"},"color":"green"},{"translate":"⇧","color":"aqua","bold":true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 46"}},{"text":"-1","color": "gold"}]}," ",{"translate":"割り振り上限:%1$sLV","color":"white","with":[{"storage":"tusb_player:","nbt":"Potentials.AddLevel[6]","color":"green"}]}]
execute unless score @s Job matches 7 run tellraw @s [{"translate":" ❖%1$s","color":"red","with":[{"translate":"絡繰士","color":"white"}]},"   ",{"translate":"現在:%1$sLV 割り振り済み:%2$sLV %3$s(%4$sCP)","color":"white","with":[{"score":{"name": "@s","objective": "PuppetMasterLv"},"color":"green"},{"score":{"name": "@s","objective": "PuppetMasterLv"},"color":"green"},{"translate":"⇧","color":"aqua","bold":true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 47"}},{"text":"-1","color": "gold"}]}," ",{"translate":"割り振り上限:%1$sLV","color":"white","with":[{"storage":"tusb_player:","nbt":"Potentials.AddLevel[7]","color":"green"}]}]
execute unless score @s Job matches 8 run tellraw @s [{"translate":" ❖%1$s","color":"red","with":[{"translate":"怪盗","color":"white"}]},"     ",{"translate":"現在:%1$sLV 割り振り済み:%2$sLV %3$s(%4$sCP)","color":"white","with":[{"score":{"name": "@s","objective": "ThiefLv"},"color":"green"},{"score":{"name": "@s","objective": "ThiefLv"},"color":"green"},{"translate":"⇧","color":"aqua","bold":true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 48"}},{"text":"-1","color": "gold"}]}," ",{"translate":"割り振り上限:%1$sLV","color":"white","with":[{"storage":"tusb_player:","nbt":"Potentials.AddLevel[8]","color":"green"}]}]

tellraw @s [{"translate":"潜在能力選択画面に戻る。","color":"dark_aqua","bold":true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 199"}}]
