
###キャパシティポイントリセット

#リセット
function job:status/cp_reset

#割り振り制限
execute if score @s PotentialLock matches ..0 store result score @s PotentialLock run time query gametime

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
tellraw @s ["",{"translate":" 次のリセットまで1時間の制限がかかった。","color":"green"}]

function makeup:job/potentials/common/reset/

#キャンセル扱いにする
scoreboard players set @s PotentialTrigger 199
