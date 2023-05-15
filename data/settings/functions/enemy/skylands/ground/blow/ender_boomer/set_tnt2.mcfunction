#Function
# 周囲に不安定なTNTを配置する
scoreboard players set _ _ 4
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 if block ~-1 ~ ~ air run setblock ~-1 ~ ~ tnt[unstable=true]
execute if score _ Random matches 1 if block ~1 ~ ~ air run setblock ~1 ~ ~ tnt[unstable=true]
execute if score _ Random matches 2 if block ~ ~ ~-1 air run setblock ~ ~ ~-1 tnt[unstable=true]
execute if score _ Random matches 3 if block ~ ~ ~1 air run setblock ~ ~ ~1 tnt[unstable=true]
# パーティクル表示
particle composter ~ ~1.5 ~ 0.5 0.5 0.5 0.01 20 force @a[distance=..32]
