#> ai:turn/exit_next_preparation

## TurnをExitするときに実行する
## 次のTurnでのMobAI Tick処理の準備

# 現在のスキルインターバルをストレージへ記録
# ありえないインターバル値はもともと持っていない
execute if score @s AI_SkillInterval matches ..1147483647 store result storage mob_data: AI.Turn[0].Skill[0].Interval.Current int 1 run scoreboard players get @s AI_SkillInterval

# 現在のTurn.Exit.TimeCountをストレージへ記録
# ありえないインターバル値はもともと持っていない
execute if score @s AI_ExitTime matches ..1147483647 store result storage mob_data: AI.Turn[0].Exit.TimeCount int 1 run scoreboard players get @s AI_ExitTime
