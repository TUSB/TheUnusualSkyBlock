
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

# 各職業の演出を表示する
execute if score _ CanChangeJobFlag matches 31 run function makeup:job/change/knight
execute if score _ CanChangeJobFlag matches 30 run function makeup:job/change/ninja
execute if score _ CanChangeJobFlag matches 29 run function makeup:job/change/hunter
execute if score _ CanChangeJobFlag matches 28 run function makeup:job/change/white_mage
execute if score _ CanChangeJobFlag matches 27 run function makeup:job/change/black_mage
execute if score _ CanChangeJobFlag matches 26 run function makeup:job/change/summoner
execute if score _ CanChangeJobFlag matches 25 run function makeup:job/change/puppet_master
execute if score _ CanChangeJobFlag matches 24 run function makeup:job/change/thief
