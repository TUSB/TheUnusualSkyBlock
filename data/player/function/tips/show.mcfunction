#> player:tips/show
### TIPS表示

# プレイヤーのTIPS取得
function #oh_my_dat:please
data modify storage tusb_player: TIPS set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TIPSList.Valid

# 表示するTIPSが無ければ中断
execute unless data storage tusb_player: TIPS[1] run return fail

# 乱数更新
execute store result score _ Random run function calc:random
# TIPSの総数を取得
execute store result score _ _ run data get storage tusb_player: TIPS
scoreboard players remove _ _ 1
# TIPSの総数で余剰
scoreboard players operation _ Random %= _ _

# 表示するTIPSを決定
# 0番は表示できない。
data remove storage tusb_player: _
execute store result storage tusb_player: _.Show int 1 run scoreboard players add _ Random 1

# トリガー有効化
scoreboard players enable @s TipsSupTrigger

# TIPS表示
function player:tips/show.macro with storage tusb_player: _
