#> skill:act/black_mage/rock_n_roll/tick
#
# ロックンロール毎tick処理

# IDが一致したロックンロールで回転・攻撃処理を実行
scoreboard players operation _ TrackingID = @s OhMyDatID
execute as @e[tag=RockNRoll] if score @s TrackingID = _ TrackingID run function skill:act/black_mage/rock_n_roll/attack

scoreboard players remove @s RockNRoll 1
scoreboard players reset @s[scores={RockNRoll=..0}] RockNRoll

# 演出
function makeup:skill/act/black_mage/rock_n_roll/tick
