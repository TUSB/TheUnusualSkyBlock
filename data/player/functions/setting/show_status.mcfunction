
###ステータス表示


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
execute if score @s Job matches 0 run data modify storage tusb_player: Job set value '{"translate":"無職","color":"green"}'
execute if score @s Job matches 1 run data modify storage tusb_player: Job set value '{"translate":"剣士","color":"green"}'
execute if score @s Job matches 2 run data modify storage tusb_player: Job set value '{"translate":"忍者","color":"green"}'
execute if score @s Job matches 3 run data modify storage tusb_player: Job set value '{"translate":"狩人","color":"green"}'
execute if score @s Job matches 4 run data modify storage tusb_player: Job set value '{"translate":"白魔導士","color":"green"}'
execute if score @s Job matches 5 run data modify storage tusb_player: Job set value '{"translate":"黒魔導士","color":"green"}'
execute if score @s Job matches 6 run data modify storage tusb_player: Job set value '{"translate":"召喚士","color":"green"}'
execute if score @s Job matches 7 run data modify storage tusb_player: Job set value '{"translate":"絡繰士","color":"green"}'
execute if score @s Job matches 8 run data modify storage tusb_player: Job set value '{"translate":"怪盗","color":"green"}'

tellraw @s[scores={Level=..49}] [{"translate":"Job:%1$s LV:%2$s Exp:%3$s/%4$s   ","with":[{"storage":"tusb_player:","nbt":"Job","interpret": true},{"score":{"name":"_","objective":"Level"},"color":"green"},{"score":{"name": "@s","objective": "Exp"},"color": "green"},{"score":{"name": "@s","objective": "RequiredExp"},"color": "green"}]}]
tellraw @s[scores={Level=50..}] [{"translate":"Job:%1$s LV:%2$s CP:%3$s Exp:%4$s/%5$s   ","with":[{"storage":"tusb_player:","nbt":"Job","interpret": true},{"score":{"name":"_","objective":"Level"},"color":"green"},{"score":{"name": "_","objective": "Exp"},"color":"green"},{"score":{"name": "@s","objective": "Exp"},"color": "green"},{"score":{"name": "@s","objective": "RequiredExp"},"color": "green"}]}]

#各職業レベル表示
scoreboard players set _ AddKnight 0
scoreboard players set _ AddNinja 0
scoreboard players set _ AddHunter 0
scoreboard players set _ AddWhite_mage 0
scoreboard players set _ AddBlack_mage 0
scoreboard players set _ AddSummoner 0
scoreboard players set _ AddPuppet_master 0
scoreboard players set _ AddThief 0

execute if score @s Job matches 1 run scoreboard players operation _ AddKnight = @s Level
execute if score @s Job matches 2 run scoreboard players operation _ AddNinja = @s Level
execute if score @s Job matches 3 run scoreboard players operation _ AddHunter = @s Level
execute if score @s Job matches 4 run scoreboard players operation _ AddWhite_mage = @s Level
execute if score @s Job matches 5 run scoreboard players operation _ AddBlack_mage = @s Level
execute if score @s Job matches 6 run scoreboard players operation _ AddSummoner = @s Level
execute if score @s Job matches 7 run scoreboard players operation _ AddPuppet_master = @s Level
execute if score @s Job matches 8 run scoreboard players operation _ AddThief = @s Level

function oh_my_dat:please
execute if score _ AddKnight matches 0 store result score _ AddKnight run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[1].Level
execute if score _ AddNinja matches 0 store result score _ AddNinja run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[2].Level
execute if score _ AddHunter matches 0 store result score _ AddHunter run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[3].Level
execute if score _ AddWhite_mage matches 0 store result score _ AddWhite_mage run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[4].Level
execute if score _ AddBlack_mage matches 0 store result score _ AddBlack_mage run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[5].Level
execute if score _ AddSummoner matches 0 store result score _ AddSummoner run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[6].Level
execute if score _ AddPuppet_master matches 0 store result score _ AddPuppet_master run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[7].Level
execute if score _ AddThief matches 0 store result score _ AddThief run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[8].Level

scoreboard players set _ _ 50
scoreboard players operation _ AddKnight < _ _
scoreboard players operation _ AddNinja < _ _
scoreboard players operation _ AddHunter < _ _
scoreboard players operation _ AddWhite_mage < _ _
scoreboard players operation _ AddBlack_mage < _ _
scoreboard players operation _ AddSummoner < _ _
scoreboard players operation _ AddPuppet_master < _ _
scoreboard players operation _ AddThief < _ _

tellraw @s [{"translate":"剣士"},":",{"score":{"name":"_","objective":"AddKnight"},"color":"green"}," ",{"translate":"忍者"},":",{"score":{"name":"_","objective":"AddNinja"},"color":"green"}," ",{"translate":"狩人"},":",{"score":{"name":"_","objective":"AddHunter"},"color":"green"}," ",{"translate":"白魔導士"},":",{"score":{"name":"_","objective":"AddWhite_mage"},"color":"green"}," ",{"translate":"黒魔導士"},":",{"score":{"name":"_","objective":"AddBlack_mage"},"color":"green"}," ",{"translate":"召喚士"},":",{"score":{"name":"_","objective":"AddSummoner"},"color":"green"}," ",{"translate":"絡繰士"},":",{"score":{"name":"_","objective":"AddPuppet_master"},"color":"green"}," ",{"translate":"怪盗"},":",{"score":{"name":"_","objective":"AddThief"},"color":"green"}]
