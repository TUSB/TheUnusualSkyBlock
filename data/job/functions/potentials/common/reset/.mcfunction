
###キャパシティポイントリセット

#リセット
function job:status/cp_reset

#割り振り制限
scoreboard players set @s PotentialLock 60

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
tellraw @s ["",{"translate":" 潜在能力がリセットされた！！","color":"green"}]
tellraw @s ["",{"translate":" 次の割り振りまで1時間の制限がかかった。","color":"green"}]

function makeup:job/potentials/common/reset/

#キャンセル扱いにする
scoreboard players set @s PotentialTrigger 199
