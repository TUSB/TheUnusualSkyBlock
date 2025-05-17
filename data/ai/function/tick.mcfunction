#> ai:tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Ticks Count matches 0 run function ai:one_second

# Turnスキル、Exit.Time インターバル消費
scoreboard players remove @s AI_SkillInterval 1
scoreboard players remove @s AI_ExitTime 1

# NoAIタグが付いていれば失敗
execute if entity @s[tag=NoAI] run return fail

# 実行条件の確認
execute unless predicate ai:tick_act run return fail

function #oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI

function ai:turn/

##CallOnTick
execute if entity @s[tag=CallOnTick] run function ai:call/trigger/tick

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI

#Target解除
execute as 0-0-0-0-2 run function calc:geometry/return_marker

### デバッグ用 実行エンティティ数カウント
execute if data storage main: difficult{world:"debug"} run function debug:ai/usage_rate_2
