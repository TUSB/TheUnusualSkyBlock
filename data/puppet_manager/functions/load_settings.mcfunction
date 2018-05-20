##############################
### からくり設定読み込み
##############################

###PupRecordLevel レコード特性のレベル
###PupRecordType レコードの種類
###PupRecordSlot レコードのスロット

###エンティティのPupRecordLevelには自身のレコードのレベルが入る

###エンティティのPupRecordTypeにはレコードの種類をセットしておく
#$CloseAttack 1         近接攻撃Lv1     近接攻撃Lv2     近接攻撃Lv3
#$CloseRangeAttack 2    近接範囲攻撃Lv1 近接範囲攻撃Lv2 近接範囲攻撃Lv3
#$LongAttack 3          遠隔攻撃Lv1     遠隔攻撃Lv2     遠隔攻撃Lv3
#$LongRangeAttack 4     遠隔範囲攻撃Lv1 遠隔範囲攻撃Lv2 遠隔範囲攻撃Lv3
#$EffectAttack 5        状態異常単体攻撃Lv1 状態異常単体攻撃Lv2 状態異常範囲攻撃Lv2

#$Defense 6             マスター防御Lv1     マスター防御Lv2     パーティ防御Lv2
#$HealthCure 7          マスター体力回復Lv1 マスター体力回復Lv2 パーティ体力回復Lv2
#$EffectCure 8          マスター異常回復Lv1 マスター異常回復Lv2 パーティ異常回復Lv2
#$MagicCure 9           マスター魔力回復Lv1 マスター魔力回復Lv2 パーティ魔力回復Lv2

#$Fly 10                自身空中機動力Lv1   自身空中機動力Lv2   マスター空中機動力Lv2
#$Swim 11               自身水中機動力Lv1   自身水中機動力Lv2   マスター水中機動力Lv2
#$Mobility 12           自身地上機動力Lv2   自身地上機動力Lv3   マスター地上機動力Lv3

###エンティティのPupRecordSlotは、優先度判定に使われる

scoreboard players set @e[tag=PupRecordEntity] PupRecordLevel 0
scoreboard players set @e[tag=PupRecordEntity] PupRecordSlot 18

execute store result score $Type PupRecordType run data get entity @s Inventory[0].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[0].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[1].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[1].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[2].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[2].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[3].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[3].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[4].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[4].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[5].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[5].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[6].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[6].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[7].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[7].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[8].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[8].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[9].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[9].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[10].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[10].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[11].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[11].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[12].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[12].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[13].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[13].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[14].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[14].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[15].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[15].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[16].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[16].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute store result score $Type PupRecordType run data get entity @s Inventory[17].tag.PupRecordType 1
execute store result score $Slot PupRecordSlot run data get entity @s Inventory[17].Slot 1

execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players add @s PupRecordLevel 100
execute if score $Slot PupRecordSlot matches 9..17 as @e[tag=PupRecordEntity] if score @s PupRecordType = $Type PupRecordType run scoreboard players operation @s[scores={PupRecordSlot=18}] PupRecordSlot -= $Slot PupRecordSlot

execute as @e[tag=PupRecordEntity] run scoreboard players operation @s PupRecordLevel += @s PupRecordSlot


