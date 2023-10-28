#Function
# 効果
tp @e[tag=Mob,tag=!Unmoved,sort=furthest,distance=16.01..48,limit=3] @s

# サウンド
playsound block.portal.ambient hostile @a[distance=..32] ~ ~ ~ 0.7 1.0 0.25
# パーティクル
# 多角形 1
particle dust 2 0 100000000 2 ^0 ^ ^-9 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^1.34844 ^ ^-5.84844 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^3.29792 ^ ^-3.29792 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^5.84844 ^ ^-1.34844 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^9 ^ ^1.5 1.5 1.5 0 0 2 force
particle dust 2 0 100000000 2 ^5.84844 ^ ^1.34844 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^3.29792 ^ ^3.29792 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^1.34844 ^ ^5.84844 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^0 ^ ^9 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^-1.34844 ^ ^5.84844 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^-3.29792 ^ ^3.29792 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^-5.84844 ^ ^1.34844 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^-9 ^ ^1.5 1.5 1.5 0 0 2 force
particle dust 2 0 100000000 2 ^-5.84844 ^ ^-1.34844 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^-3.29792 ^ ^-3.29792 1.5 1.5 1.5 0 2 force
particle dust 2 0 100000000 2 ^-1.34844 ^ ^-5.84844 1.5 1.5 1.5 0 2 force

# 円 1
particle dust 0.000 0.000 0.000 4 ^0 ^ ^-3 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^1.14805 ^ ^-2.77164 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^2.12132 ^ ^-2.12132 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^2.77164 ^ ^-1.14805 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^3 ^ ^0 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^2.77164 ^ ^1.14805 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^2.12132 ^ ^2.12132 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^1.14805 ^ ^2.77164 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^0 ^ ^3 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^-1.14805 ^ ^2.77164 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^-2.12132 ^ ^2.12132 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^-2.77164 ^ ^1.14805 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^-3 ^ ^0 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^-2.77164 ^ ^-1.14805 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^-2.12132 ^ ^-2.12132 0 0 0 0 0 force @a[distance=..8]
particle dust 0.000 0.000 0.000 4 ^-1.14805 ^ ^-2.77164 0 0 0 0 0 force @a[distance=..8]
