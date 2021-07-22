
###キャパシティポイントリセット

scoreboard players remove @s Level 1

#他ジョブレベルダウンチェック(要確認)
execute unless entity @s[scores={AddKnight=0,AddNinja=0,AddHunter=0,AddWhiteMage=0,AddBlackMage=0,AddSummoner=0,AddPuppetMaster=0,AddThief=0}] run function job:potentials/common/reset/add_level/remove

#リセット
function job:status/cp_reset

#表示
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s ["",{"translate":" キャパシティポイントを消費した！！","color":"green"}]
tellraw @s ["",{"translate":" 潜在能力がリセットされた！！","color":"green"}]

function makeup:job/potentials/common/reset/

#キャンセル扱いにする
scoreboard players set @s PotentialTrigger 199
