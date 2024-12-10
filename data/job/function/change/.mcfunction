#> job:change/
# バースト強制終了
execute if score @s Burst matches 1.. run function skill:burst/finish

function job:status/operation_start

# 前の職業のデータをセーブ
function job:status/save

# 次の職業のデータをロード
scoreboard players operation @s Job = @s ChangeJob
function job:status/load

# 各職業ごとの演出
execute if score @s ChangeJob matches 1 run function makeup:job/change/knight
execute if score @s ChangeJob matches 2 run function makeup:job/change/ninja
execute if score @s ChangeJob matches 3 run function makeup:job/change/hunter
execute if score @s ChangeJob matches 4 run function makeup:job/change/white_mage
execute if score @s ChangeJob matches 5 run function makeup:job/change/black_mage
execute if score @s ChangeJob matches 6 run function makeup:job/change/summoner
execute if score @s ChangeJob matches 7 run function makeup:job/change/puppet_master
execute if score @s ChangeJob matches 8 run function makeup:job/change/thief

#スキルレベル更新
function job:status/get_all_job_level

function job:status/operation_end

#レベルアップ可能ならレベルアップする
execute if score @s Exp >= @s RequiredExp run function job:level_up/

# トグルスキルリセット
function skill:toggle_reset

# 職業変更制限 転職後スキル発実行フラグ
scoreboard players set @s ChangeJobLock -1
