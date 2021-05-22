
###他ジョブレベルアップ 分岐

#レベルアップさせる職業を呼び出す
scoreboard players operation _ PotentialTrigger = @s PotentialTrigger
scoreboard players operation _ Job = @s Job
scoreboard players set _ _ 10
scoreboard players operation @s PotentialTrigger %= _ _
scoreboard players operation @s Job = @s PotentialTrigger
function job:status/call

#もし初期化されていないなら初期化する
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP run function job:potentials/common/add_level/status_init

execute store result score _ Level run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].Level

#レベルアップできるかどうか判定
execute if score _ Level matches 50.. run function job:potentials/common/add_level/upper_limit
execute if score _ Level matches ..49 run function job:potentials/common/add_level/success

#Jobスコア修正
scoreboard players operation @s Job = _ Job

#他ジョブレベルアップの画面再表示 & 成功時音出し
scoreboard players set @s PotentialTrigger 131
scoreboard players set @s PotentialPrev 131
