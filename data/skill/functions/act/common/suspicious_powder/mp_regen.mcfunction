##############################
### MP回復時の処理
##############################

#MP回復無効時間を減少
scoreboard players operation @s SuspiciousPowderToken += @s MPConsumption

#MP回復無効時間が続行ならMP回復量を0に設定
execute if score @s SuspiciousPowderToken matches 1.. run scoreboard players set @s MPConsumption 0

#MP回復無効時間が0以下になれば終了
execute if score @s SuspiciousPowderToken matches ..0 run function skill:act/common/suspicious_powder/act2
