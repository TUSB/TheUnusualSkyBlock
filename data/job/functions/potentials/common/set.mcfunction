
###確認処理分岐

execute if score @s PotentialTrigger matches 121..149 run function job:status/operation_start
execute if score @s PotentialTrigger matches 121..149 run tag @s add OhMyDatCall

#PotentialPrev修正
scoreboard players add @s PotentialPrev 100

#ポイント計算
function job:potentials/get_point

#CP残量確認
execute if score @s PotentialTrigger matches 111..115 run scoreboard players remove _ Exp 1
execute if score @s PotentialTrigger matches 121 run scoreboard players remove _ Exp 2
execute if score @s PotentialTrigger matches 141..149 run scoreboard players remove _ Exp 1

#潜在能力引き出し
execute if score @s PotentialTrigger matches 111 if score _ Exp matches 0.. run scoreboard players remove @s MPCostRate 1
execute if score @s PotentialTrigger matches 112 if score _ Exp matches 0.. run scoreboard players remove @s IntervalRate 1
execute if score @s PotentialTrigger matches 113 if score _ Exp matches 0.. run scoreboard players add @s AuraRate 2
execute if score @s PotentialTrigger matches 114 if score _ Exp matches 0.. run scoreboard players add @s ResistMin 2
execute if score @s PotentialTrigger matches 115 if score _ Exp matches 0.. run scoreboard players add @s ElementDamageAdd 1
execute if score @s PotentialTrigger matches 121 if score _ Exp matches 0.. run scoreboard players add @s SubLevel 1
execute if score @s PotentialTrigger matches 141..149 if score _ Exp matches 0.. run function job:potentials/common/add_level/

#成功時
execute if score _ Exp matches 0.. unless score @s PotentialTrigger matches 131..132 unless score @s PotentialTrigger matches 199 unless score @s PotentialTrigger = @s PotentialPrev run function job:potentials/common/success
execute if score _ Exp matches 0.. unless score @s PotentialTrigger matches 132 unless score @s PotentialTrigger matches 199 if score @s PotentialTrigger = @s PotentialPrev run function makeup:job/potentials/common/success
#キャンセル時
execute if score @s PotentialTrigger matches 199 run function job:potentials/common/cancel
#不成功時
execute if score _ Exp matches ..-1 unless score @s PotentialTrigger matches 132 unless score @s PotentialTrigger matches 199 run function job:potentials/common/lack

#他ジョブレベルアップ ジョブ選択表示
execute if score @s PotentialTrigger matches 131 run function job:potentials/common/add_level/show
execute if score _ PotentialTrigger matches 141..149 run scoreboard players operation @s PotentialTrigger = _ PotentialTrigger
execute if score _ PotentialTrigger matches 141..149 run scoreboard players reset _ PotentialTrigger

#キャパシティポイントリセット
execute if score @s PotentialTrigger matches 132 if score _ Calc matches ..0 unless score @s PotentialLock matches 1.. run function job:potentials/common/reset/unnecessary
execute if score @s PotentialTrigger matches 132 if score _ Calc matches 1.. unless score @s PotentialLock matches 1.. run function job:potentials/common/reset/

execute if entity @s[tag=OhMyDatCall] run function job:status/get_all_job_level
execute if entity @s[tag=OhMyDatCall] run function job:status/operation_end
execute if entity @s[tag=OhMyDatCall] run tag @s remove OhMyDatCall
