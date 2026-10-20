#> skill:act/common/suspicious_powder/act2
#
# 怪しい粉代償モード終了時
#

# リセット
scoreboard players reset @s SuspiciousPowderTime
scoreboard players reset @s SuspiciousPowderToken

# 通知
tellraw @s {"translate":"身体の調子が元に戻った", "color":"green"}
