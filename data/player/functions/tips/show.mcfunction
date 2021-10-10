
### TIPS表示（最大３２個）

# 乱数更新
execute store result score _ Random run function calc:random
# TIPSの総数を取得
execute store result score _ _ run data get storage tusb_player: TIPS
# TIPSの総数で余剰
scoreboard players operation _ Random %= _ _

# 番目にすると1少ないので1足す
execute store result storage calc: Bit.Number int 1 run scoreboard players add _ Random 1

# BitFlagsを反転させて入れないといけない 2^総数-1
execute store result storage calc: Power.value int 1 run scoreboard players get _ _
data modify storage calc: Power.Base set value 2
execute store result score _ TipsSuppressFlag run function calc:power/
scoreboard players remove _ TipsSuppressFlag 1
scoreboard players operation _ TipsSuppressFlag -= @s TipsSuppressFlag

# Number番目のBitFlag取得
execute store result storage calc: Bit.Flags int 1 run scoreboard players get _ TipsSuppressFlag
data modify storage calc: Bit.Operation set value 3
function calc:bit/
execute store result score _ _ run data get storage calc: Bit.Digit

# トリガー有効化
scoreboard players enable @s TipsSupTrigger

# TIPS表示
## 1-10
execute if score _ _ matches 1 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[0]","interpret":true}
execute if score _ _ matches 2 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[1]","interpret":true}
execute if score _ _ matches 3 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[2]","interpret":true}
execute if score _ _ matches 4 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[3]","interpret":true}
execute if score _ _ matches 5 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[4]","interpret":true}
execute if score _ _ matches 6 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[5]","interpret":true}
execute if score _ _ matches 7 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[6]","interpret":true}
execute if score _ _ matches 8 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[7]","interpret":true}
execute if score _ _ matches 9 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[8]","interpret":true}
execute if score _ _ matches 10 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[9]","interpret":true}

## 11-20
execute if score _ _ matches 11 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[10]","interpret":true}
execute if score _ _ matches 12 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[11]","interpret":true}
execute if score _ _ matches 13 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[12]","interpret":true}
execute if score _ _ matches 14 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[13]","interpret":true}
execute if score _ _ matches 15 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[14]","interpret":true}
execute if score _ _ matches 16 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[15]","interpret":true}
execute if score _ _ matches 17 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[16]","interpret":true}
execute if score _ _ matches 18 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[17]","interpret":true}
execute if score _ _ matches 19 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[18]","interpret":true}
execute if score _ _ matches 20 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[19]","interpret":true}

## 21-30
execute if score _ _ matches 21 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[20]","interpret":true}
execute if score _ _ matches 22 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[21]","interpret":true}
execute if score _ _ matches 23 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[22]","interpret":true}
execute if score _ _ matches 24 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[23]","interpret":true}
execute if score _ _ matches 25 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[24]","interpret":true}
execute if score _ _ matches 26 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[25]","interpret":true}
execute if score _ _ matches 27 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[26]","interpret":true}
execute if score _ _ matches 28 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[27]","interpret":true}
execute if score _ _ matches 29 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[28]","interpret":true}
execute if score _ _ matches 20 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[29]","interpret":true}

## 31-32
execute if score _ _ matches 31 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[30]","interpret":true}
execute if score _ _ matches 32 run tellraw @s {"storage":"tusb_player:","nbt":"TIPS[31]","interpret":true}
