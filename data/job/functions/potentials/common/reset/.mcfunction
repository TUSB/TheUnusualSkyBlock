
###キャパシティポイントリセット

scoreboard players remove @s Level 1

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
