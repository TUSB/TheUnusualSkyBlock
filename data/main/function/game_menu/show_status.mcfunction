#> main:game_menu/show_status
###ステータス表示

function job:status/operation_start

#レベルとCPを算出
#レベル: _ Level  CP: _ Exp
scoreboard players operation _ Level = @s Level
scoreboard players set _ _ 50
scoreboard players operation _ Level < _ _
scoreboard players operation _ Exp = @s Level
scoreboard players remove _ Exp 50
scoreboard players set _ _ 0
scoreboard players operation _ Exp > _ _

#現在の職業のステータスを表示
execute if score @s Job matches 0 run data modify storage tusb_player: Job set value '["",{"text":"","color":"green","font":"icon"},{"translate":"無職","color":"green"}]'
execute if score @s Job matches 1 run data modify storage tusb_player: Job set value '["",{"text":"K","color":"green","font":"icon"},{"translate":"剣士","color":"green"}]'
execute if score @s Job matches 2 run data modify storage tusb_player: Job set value '["",{"text":"N","color":"green","font":"icon"},{"translate":"忍者","color":"green"}]'
execute if score @s Job matches 3 run data modify storage tusb_player: Job set value '["",{"text":"H","color":"green","font":"icon"},{"translate":"狩人","color":"green"}]'
execute if score @s Job matches 4 run data modify storage tusb_player: Job set value '["",{"text":"W","color":"green","font":"icon"},{"translate":"白魔導士","color":"green"}]'
execute if score @s Job matches 5 run data modify storage tusb_player: Job set value '["",{"text":"B","color":"green","font":"icon"},{"translate":"黒魔導士","color":"green"}]'
execute if score @s Job matches 6 run data modify storage tusb_player: Job set value '["",{"text":"S","color":"green","font":"icon"},{"translate":"召喚士","color":"green"}]'
execute if score @s Job matches 7 run data modify storage tusb_player: Job set value '["",{"text":"P","color":"green","font":"icon"},{"translate":"絡繰士","color":"green"}]'
execute if score @s Job matches 8 run data modify storage tusb_player: Job set value '["",{"text":"T","color":"green","font":"icon"},{"translate":"怪盗","color":"green"}]'

tellraw @s "====================================================="
tellraw @s[scores={Level=..49}] [{"translate":"Job:%1$s LV:%2$s Exp:%3$s/%4$s   ","with":[{"storage":"tusb_player:","nbt":"Job","interpret": true},{"score":{"name":"_","objective":"Level"},"color":"green"},{"score":{"name": "@s","objective": "Exp"},"color": "green"},{"score":{"name": "@s","objective": "RequiredExp"},"color": "green"}]}]
tellraw @s[scores={Level=50..}] [{"translate":"Job:%1$s LV:%2$s CP:%3$s Exp:%4$s/%5$s   ","with":[{"storage":"tusb_player:","nbt":"Job","interpret": true},{"score":{"name":"_","objective":"Level"},"color":"green"},{"score":{"name": "_","objective": "Exp"},"color":"green"},{"score":{"name": "@s","objective": "Exp"},"color": "green"},{"score":{"name": "@s","objective": "RequiredExp"},"color": "green"}]},"   ",{"translate":"⇨ 潜在能力を引き上げる","color":"gold","clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 1"}}]

#各職業レベル表示
function job:status/call
execute store result storage job: JobStatus[-9].Level int 1 run scoreboard players get @s Level

scoreboard players set _ _ 50
execute store result score _ KnightLv run data get storage job: JobStatus[1].Level
scoreboard players operation _ KnightLv < _ _
execute store result score _ NinjaLv run data get storage job: JobStatus[2].Level
scoreboard players operation _ NinjaLv < _ _
execute store result score _ HunterLv run data get storage job: JobStatus[3].Level
scoreboard players operation _ HunterLv < _ _
execute store result score _ WhiteMageLv run data get storage job: JobStatus[4].Level
scoreboard players operation _ WhiteMageLv < _ _
execute store result score _ BlackMageLv run data get storage job: JobStatus[5].Level
scoreboard players operation _ BlackMageLv < _ _
execute store result score _ SummonerLv run data get storage job: JobStatus[6].Level
scoreboard players operation _ SummonerLv < _ _
execute store result score _ PuppetMasterLv run data get storage job: JobStatus[7].Level
scoreboard players operation _ PuppetMasterLv < _ _
execute store result score _ ThiefLv run data get storage job: JobStatus[8].Level
scoreboard players operation _ ThiefLv < _ _

tellraw @s ""
# tellraw @s ["",{"text":"K","color":"green","font":"icon"},{"translate":"剣士"},":",{"score":{"name":"_","objective":"KnightLv"},"color":"green"}," ",{"text":"N","color":"green","font":"icon"},{"translate":"忍者"},":",{"score":{"name":"_","objective":"NinjaLv"},"color":"green"}," ",{"text":"H","color":"green","font":"icon"},{"translate":"狩人"},":",{"score":{"name":"_","objective":"HunterLv"},"color":"green"}," ",{"text":"W","color":"green","font":"icon"},{"translate":"白魔導士"},":",{"score":{"name":"_","objective":"WhiteMageLv"},"color":"green"},"\n",{"text":"B","color":"green","font":"icon"},{"translate":"黒魔導士"},":",{"score":{"name":"_","objective":"BlackMageLv"},"color":"green"}," ",{"text":"S","color":"green","font":"icon"},{"translate":"召喚士"},":",{"score":{"name":"_","objective":"SummonerLv"},"color":"green"}," ",{"text":"P","color":"green","font":"icon"},{"translate":"絡繰士"},":",{"score":{"name":"_","objective":"PuppetMasterLv"},"color":"green"}," ",{"text":"T","color":"green","font":"icon"},{"translate":"怪盗"},":",{"score":{"name":"_","objective":"ThiefLv"},"color":"green"}]
tellraw @s ["",{"text":"K","color":"green","font":"icon"},{"translate":"剣士"},":",{"score":{"name":"_","objective":"KnightLv"},"color":"green"}," ",{"text":"N","color":"green","font":"icon"},{"translate":"忍者"},":",{"score":{"name":"_","objective":"NinjaLv"},"color":"green"}," ",{"text":"H","color":"green","font":"icon"},{"translate":"狩人"},":",{"score":{"name":"_","objective":"HunterLv"},"color":"green"}," ",{"text":"W","color":"green","font":"icon"},{"translate":"白魔導士"},":",{"score":{"name":"_","objective":"WhiteMageLv"},"color":"green"},"\n",{"text":"B","color":"green","font":"icon"},{"translate":"黒魔導士"},":",{"score":{"name":"_","objective":"BlackMageLv"},"color":"green"}," ",{"text":"S","color":"green","font":"icon"},{"translate":"召喚士"},":",{"score":{"name":"_","objective":"SummonerLv"},"color":"green"}," ",{"text":"P","color":"dark_gray","strikethrough":true,"font":"icon"},{"translate":"絡繰士","strikethrough":true},":",{"score":{"name":"_","objective":"PuppetMasterLv"},"color":"green"}," ",{"text":"T","color":"dark_gray","strikethrough":true,"font":"icon"},{"translate":"怪盗","strikethrough":true},":",{"score":{"name":"_","objective":"ThiefLv"},"color":"green"}]
tellraw @s "====================================================="

scoreboard players enable @s PotentialTrigger
