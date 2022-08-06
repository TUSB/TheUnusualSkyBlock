
###他ジョブレベルアップ 分岐

#レベルアップさせる職業を呼び出す
scoreboard players operation _ PotentialTrigger = @s PotentialTrigger
scoreboard players operation _ Job = @s Job
scoreboard players set _ _ 10
scoreboard players operation @s PotentialTrigger %= _ _
scoreboard players operation @s Job = @s PotentialTrigger
function job:status/call

#もし初期化されていないなら初期化する
execute unless data storage job: JobStatus[-9].CP run function job:potentials/common/add_level/status_init

execute store result score _ Level run data get storage job: JobStatus[-9].Level

#レベルアップできるかどうか判定
execute if score @s Job matches 1 store result score _ _ run data get storage tusb_player: Potentials.AddLevel[1] 1
execute if score @s Job matches 2 store result score _ _ run data get storage tusb_player: Potentials.AddLevel[2] 1
execute if score @s Job matches 3 store result score _ _ run data get storage tusb_player: Potentials.AddLevel[3] 1
execute if score @s Job matches 4 store result score _ _ run data get storage tusb_player: Potentials.AddLevel[4] 1
execute if score @s Job matches 5 store result score _ _ run data get storage tusb_player: Potentials.AddLevel[5] 1
execute if score @s Job matches 6 store result score _ _ run data get storage tusb_player: Potentials.AddLevel[6] 1
execute if score @s Job matches 7 store result score _ _ run data get storage tusb_player: Potentials.AddLevel[7] 1
execute if score @s Job matches 8 store result score _ _ run data get storage tusb_player: Potentials.AddLevel[8] 1

execute if score _ Level >= _ _ run function job:potentials/common/add_level/upper_limit
execute if score _ Level < _ _ run function job:potentials/common/add_level/success

#Jobスコア修正
scoreboard players operation @s Job = _ Job

#他ジョブレベルアップの画面再表示 & 成功時音出し
scoreboard players set @s PotentialTrigger 131
scoreboard players set @s PotentialPrev 131
