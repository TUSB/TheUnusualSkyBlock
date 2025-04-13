#> ai:turn/preparation

# 処理の前準備
# ai:tickでOhMyDatを呼び出して処理を実行するための前準備

# リセット
scoreboard players set @s AI_SkillInterval 2147483647
scoreboard players set @s AI_ExitTime 2147483647
tag @s remove HasExitCondition
tag @s remove HasCallOnPassenger

# Turnスキルのインターバル取得
execute if data storage mob_data: AI.Turn[0].Skill[0] store result score @s AI_SkillInterval run data get storage mob_data: AI.Turn[0].Skill[0].Interval.Current

# TurnのExit.Time取得
execute if data storage mob_data: AI.Turn[0].Exit.Time store result score @s AI_ExitTime run data get storage mob_data: AI.Turn[0].Exit.Time

# TurnのExit.Conditionを持っていることを記録
execute if data storage mob_data: AI.Turn[0].Exit.Condition run tag @s add HasExitCondition

# AI.Passengerを持っていることを記録
execute if data storage mob_data: AI.Passenger[0] run tag @s add HasCallOnPassenger
