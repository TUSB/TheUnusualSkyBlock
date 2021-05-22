
###CPを減少させる
#減少量を出す
scoreboard players operation _ Calc -= _ AllExp

##一番多く割り振られている潜在能力を見つけて減少させる
#見つける
scoreboard players set _ Exp 0
scoreboard players operation _ Exp > _ MPCostRate
scoreboard players operation _ Exp > _ IntervalRate
scoreboard players operation _ Exp > _ AuraRate
scoreboard players operation _ Exp > _ ResistMin
scoreboard players set _ _ 2
scoreboard players operation _ CritProbability *= _ _
scoreboard players operation _ Exp > _ CritProbability
scoreboard players set _ _ 2
scoreboard players operation _ SubLevel *= _ _
scoreboard players operation _ Exp > _ SubLevel
scoreboard players operation _ Exp > @s AddKnight
scoreboard players operation _ Exp > @s AddNinja
scoreboard players operation _ Exp > @s AddHunter
scoreboard players operation _ Exp > @s AddWhite_mage
scoreboard players operation _ Exp > @s AddBlack_mage
scoreboard players operation _ Exp > @s AddSummoner
scoreboard players operation _ Exp > @s AddPuppet_master
scoreboard players operation _ Exp > @s AddThief

#割り振られているCPの最大値より減少CPが多い時は剥奪するCPがマイナスにならないようにする
#もし剥奪するCPがマイナスになるほど多い場合は2周目に回す
execute if score _ Calc > _ Exp run scoreboard players operation _ Calc -= _ Exp
#減少させる
#上で出した最大CPと同じものを探して剥奪する
#
scoreboard players set _ Ret 0
execute if score _ Ret matches 0 if score _ Exp = _ MPCostRate store success score _ Ret run scoreboard players operation @s MPCostRate += _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ MPCostRate run scoreboard players set _ Ret 2
execute if score _ Ret matches 0 if score _ Exp = _ IntervalRate store success score _ Ret run scoreboard players operation @s IntervalRate += _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ IntervalRate run scoreboard players set _ Ret 2
execute if score _ Ret matches 0 if score _ Exp = _ AuraRate store success score _ Ret run scoreboard players operation @s AuraRate += _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ AuraRate run scoreboard players set _ Ret 2
execute if score _ Ret matches 0 if score _ Exp = _ ResistMin store success score _ Ret run scoreboard players operation @s ResistMin -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ ResistMin run scoreboard players set _ Ret 2
execute if score _ Ret matches 0 if score _ Exp = _ CritProbability store success score _ Ret run scoreboard players operation @s CritProbability -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ CritProbability run scoreboard players set _ Ret 2
#
execute if score _ Ret matches 1 if score _ Exp = _ CritProbability run scoreboard players set _ _ 2
execute if score _ Ret matches 1 if score _ Exp = _ CritProbability run scoreboard players operation _ Calc /= _ _
execute if score _ Ret matches 1 if score _ Exp = _ CritProbability run scoreboard players operation @s CritProbability += _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ CritProbability run scoreboard players set _ Ret 2
execute if score _ Ret matches 0 if score _ Exp = _ SubLevel store success score _ Ret run scoreboard players operation @s SubLevel -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ SubLevel run scoreboard players set _ _ 2
execute if score _ Ret matches 1 if score _ Exp = _ SubLevel run scoreboard players operation _ Calc /= _ _
execute if score _ Ret matches 1 if score _ Exp = _ SubLevel run scoreboard players operation @s SubLevel += _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ SubLevel run scoreboard players set _ Ret 2
#
# 職業系のものは、CPを減らすことで別の職業がレベルダウンしてさらにCPが減って……というループが発生する可能性があるので処理がややこしい
# _ Required には現在CPを剥奪している職業の番号が入る
#
execute if score _ Ret matches 0 if score _ Exp = @s AddKnight store success score _ Ret run scoreboard players operation _ AllExp = @s AddKnight
execute if score _ Ret matches 1 if score _ Exp = @s AddKnight run scoreboard players operation @s AddKnight -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players operation _ RequiredExp -= @s Job
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players set @s Job 1
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run function job:potentials/common/reset/add_level/level_remove
#
execute if score _ Ret matches 0 if score _ Exp = @s AddNinja store success score _ Ret run scoreboard players operation _ AllExp = @s AddNinja
execute if score _ Ret matches 1 if score _ Exp = @s AddNinja run scoreboard players operation @s AddNinja -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players operation _ RequiredExp = @s Job
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players set @s Job 2
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run function job:potentials/common/reset/add_level/level_remove
#
execute if score _ Ret matches 0 if score _ Exp = @s AddHunter store success score _ Ret run scoreboard players operation _ AllExp = @s AddHunter
execute if score _ Ret matches 1 if score _ Exp = @s AddHunter run scoreboard players operation @s AddHunter -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players operation _ RequiredExp = @s Job
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players set @s Job 3
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run function job:potentials/common/reset/add_level/level_remove
#
execute if score _ Ret matches 0 if score _ Exp = @s AddWhite_mage store success score _ Ret run scoreboard players operation _ AllExp = @s AddWhite_mage
execute if score _ Ret matches 1 if score _ Exp = @s AddWhite_mage run scoreboard players operation @s AddWhite_mage -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players operation _ RequiredExp = @s Job
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players set @s Job 4
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run function job:potentials/common/reset/add_level/level_remove
#
execute if score _ Ret matches 0 if score _ Exp = @s AddBlack_mage store success score _ Ret run scoreboard players operation _ AllExp = @s AddBlack_mage
execute if score _ Ret matches 1 if score _ Exp = @s AddBlack_mage run scoreboard players operation @s AddBlack_mage -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players operation _ RequiredExp = @s Job
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players set @s Job 5
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run function job:potentials/common/reset/add_level/level_remove
#
execute if score _ Ret matches 0 if score _ Exp = @s AddSummoner store success score _ Ret run scoreboard players operation _ AllExp = @s AddSummoner
execute if score _ Ret matches 1 if score _ Exp = @s AddSummoner run scoreboard players operation @s AddSummoner -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players operation _ RequiredExp = @s Job
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players set @s Job 6
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run function job:potentials/common/reset/add_level/level_remove
#
execute if score _ Ret matches 0 if score _ Exp = @s AddPuppet_master store success score _ Ret run scoreboard players operation _ AllExp = @s AddPuppet_master
execute if score _ Ret matches 1 if score _ Exp = @s AddPuppet_master run scoreboard players operation @s AddPuppet_master -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players operation _ RequiredExp = @s Job
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players set @s Job 7
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run function job:potentials/common/reset/add_level/level_remove
#
execute if score _ Ret matches 0 if score _ Exp = @s AddThief store success score _ Ret run scoreboard players operation _ AllExp = @s Job
execute if score _ Ret matches 1 if score _ Exp = @s AddThief run scoreboard players operation @s AddThief -= _ Calc
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players operation _ RequiredExp = @s Job
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run scoreboard players set @s Job 8
execute if score _ Ret matches 1 if score _ Exp = _ AllExp run function job:potentials/common/reset/add_level/level_remove

#セーブ
function job:status/save

#まだ超過しているかどうかみる
function job:potentials/common/reset/add_level/cp_check

#> Retの使われ方
#
# 0 まだCP剥奪されていない
# 1 CP剥奪中
# 2 CP剥奪済み
#
