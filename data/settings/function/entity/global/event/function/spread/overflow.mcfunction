#Function
### オーバーフロー対策

# 精度を1/10にして対応、範囲が大きすぎるものに対しては警告

scoreboard players set _ MP 10
scoreboard players operation _ _ /= _ MP
scoreboard players operation _ Calc /= _ MP
data modify storage mob_data: Call.OverFlow set value 1

# 警告
execute unless score _ _ matches -46340..46340 run tellraw @a {"translate":"[System] MaxSpeedがオーバーフローしています。正常に動作しない為、値を縮小してください。"}
