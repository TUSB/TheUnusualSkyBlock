
### 職業どこでも変更許可

# アイテムに記録されている許可職業を読み込み
execute store result score _ _ run data get storage item: Item.tag.PermissionJob

# ビットフラグを立てる
scoreboard players set _ CanChangeJobFlag 32
scoreboard players operation _ CanChangeJobFlag -= _ _
data modify storage calc: Bit set value {Flags:0,Digit:0,Operation:1}
execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s CanChangeJobFlag
execute store result storage calc: Bit.Digit int 1 run scoreboard players get _ CanChangeJobFlag
execute store result score @s CanChangeJobFlag run function calc:bit/

# 変更制限を解除する
scoreboard players set @s ChangeJobLock 0

# 職業変更画面表示
execute in area:control_area run function job:change/dialog
