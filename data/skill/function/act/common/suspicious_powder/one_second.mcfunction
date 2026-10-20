##############################
### 怪しい粉毎秒処理
##############################

#効果時間を現象
scoreboard players remove @s SuspiciousPowderTime 1

#通知
execute if score @s SuspiciousPowderTime matches 5 run tellraw @s {"translate":"怪しい粉の効果が切れそうだ", "color":"red"}
execute if score @s SuspiciousPowderTime matches 0 run tellraw @s {"translate":"怪しい粉の効果が切れた", "color":"red"}

#効果終了
execute if score @s SuspiciousPowderTime matches 0 run function skill:act/common/suspicious_powder/act1
