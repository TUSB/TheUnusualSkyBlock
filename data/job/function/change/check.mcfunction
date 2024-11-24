#> job:change/check
### 職業変更 制限チェック

data modify storage calc: Bit set value {Flags:0,Digit:0,Operation:4}
execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s CanChangeJobFlag
execute store result storage calc: Bit.Digit int -1 run scoreboard players remove @s ChangeJob 32
execute store result score _ ChangeJob run function calc:bit/
execute if score _ ChangeJob matches 1 run scoreboard players add @s ChangeJob 32
execute if score _ ChangeJob matches 0 run scoreboard players reset @s ChangeJob

# 時間制限チェック
execute store result score _ ChangeJobLock run time query gametime
# 72000 = 20tick * 60sec * 60min = 1hour
scoreboard players remove _ ChangeJobLock 72000
scoreboard players operation _ ChangeJobLock -= @s ChangeJobLock

execute if score _ ChangeJobLock matches 1.. if score @s ChangeJob matches 1.. run function job:change/
execute if score _ ChangeJobLock matches ..0 run function makeup:job/change/failed

# トリガーリセット
scoreboard players reset @s ChangeJob
scoreboard players enable @s ChangeJob
