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
#$EffectAttack 5        状態異常遠隔単体攻撃Lv1 状態異常遠隔単体攻撃Lv2 状態異常遠隔範囲攻撃Lv2

#$Defense 6             マスター防御Lv1     マスター防御Lv2     パーティ防御Lv2
#$HealthCure 7          マスター体力回復Lv1 マスター体力回復Lv2 パーティ体力回復Lv2
#$EffectCure 8          マスター異常回復Lv1 マスター異常回復Lv2 パーティ異常回復Lv2
#$MagicCure 9           マスター魔力回復Lv1 マスター魔力回復Lv2 パーティ魔力回復Lv2

#$Fly 10                自身空中機動力Lv2   自身空中機動力Lv3   マスター空中機動力Lv2
#$Swim 11               自身水中機動力Lv2   自身水中機動力Lv3   マスター水中機動力Lv2
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


scoreboard players set $PupRecordLevelMax PupRecordLevel 19
scoreboard players operation $PupRecordLevelMax PupRecordLevel > @e[tag=PupRecordEntity] PupRecordLevel
execute if score $PupRecordLevelMax PupRecordLevel matches ..99 run scoreboard players set @e[tag=PupRecordEntity,scores={PupRecordType=12}] PupRecordLevel 19


###対象パペット捕捉
scoreboard players operation $PuppetID ID = @s ID
execute as @e[tag=Puppet] if score @s ID = $PuppetID ID at @s run tag @s add TargetPuppet

###モード設定
execute as @e[tag=PupRecordEntity] if score @s PupRecordLevel = $PupRecordLevelMax PupRecordLevel run scoreboard players operation $PupMaxRecordType PupRecordType = @s PupRecordType
##頭変更
execute if score $PupMaxRecordType PupRecordType matches 1..2 run replaceitem entity @e[tag=TargetPuppet,limit=1] armor.head minecraft:player_head{SkullOwner:{Id:"fa8b52b4-83cc-4155-8b27-f213cf9cd89c",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Q5YzIyMTBkMDE0ZDEzYjM4MWIzNWRhNDQ5NDc0MjVhM2NmMzdjY2E0NjA0OTc2ZTk3YTBmOTI4MGE2NzMwZSJ9fX0="}]}}}
execute if score $PupMaxRecordType PupRecordType matches 3..4 run replaceitem entity @e[tag=TargetPuppet,limit=1] armor.head minecraft:player_head{SkullOwner:{Id:"ad4c5738-8f7f-4526-b0dd-21f2af808afc",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFhZjE3NGNhNjIwZWFkNjUxMmIxNTcxNGI1OGIzMGRiMjVkM2Q1OGExMzNlY2ViZTQ5ZGQ0ZDVhMjRmN2ZlOCJ9fX0="}]}}}
execute if score $PupMaxRecordType PupRecordType matches 5 run replaceitem entity @e[tag=TargetPuppet,limit=1] armor.head minecraft:player_head{SkullOwner:{Id:"eadb4e5b-1b16-4a17-bdc6-e3b16a14e28f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWI3MGE4MmMzMmQ2Y2ZiMjM4NjUyYmViYzUyOWFjNDNmODI0NDAwMDBjNGI0ZDlhYmFjMTUzYjc5MzZjZGFhIn19fQ=="}]}}}
execute if score $PupMaxRecordType PupRecordType matches 6 run replaceitem entity @e[tag=TargetPuppet,limit=1] armor.head minecraft:player_head{SkullOwner:{Id:"a263f5d4-4e44-4fe6-9e74-62daa5cfd941",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODk5YzFkNTQ1ZTBlOTcyZjk0MjY5ZjE0YmZiNDUxNGVkZWZlZGM1YzI4MWI5ODY4MzVjNDYyODI4NmVlNmI2YiJ9fX0="}]}}}
execute if score $PupMaxRecordType PupRecordType matches 7..8 run replaceitem entity @e[tag=TargetPuppet,limit=1] armor.head minecraft:player_head{SkullOwner:{Id:"c71e84bc-e78b-4115-860c-c2a7ffc5daf6",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTlmYjk5NWQzNDg1ODY5MzQwMzc0OTMwM2U5MDQ2NzcwNGI2YmM3NDg0YzdkMTcxOTE5ODEwYWExNWQyOTI0MyJ9fX0="}]}}}
execute if score $PupMaxRecordType PupRecordType matches 9 run replaceitem entity @e[tag=TargetPuppet,limit=1] armor.head minecraft:player_head{SkullOwner:{Id:"79851c16-efe5-4b1f-9711-0fc543131779",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2VkMDBiMWQwOTA4YTA5YTU4MzAzMzVlNjRhZmUzZjAyMTg2NGU3ZTg2MWFlN2JkNmViNTcxNTEzMmExNmQ2ZiJ9fX0="}]}}}
execute if score $PupMaxRecordType PupRecordType matches 10..11 run replaceitem entity @e[tag=TargetPuppet,limit=1] armor.head minecraft:player_head{SkullOwner:{Id:"6d9c0834-d404-4885-ae29-c1f5b3c40904",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhmZDQ3YTczZWU3YzYwYWEyOTVjYTAwYzg5OWQ0ZmE3YTc1NmUzMWJkODhhZDYzZGQwYzA2Y2RhM2JkYTM2ZSJ9fX0="}]}}}
execute if score $PupMaxRecordType PupRecordType matches 12 run replaceitem entity @e[tag=TargetPuppet,limit=1] armor.head minecraft:player_head{SkullOwner:{Id:"a224f552-17ac-4286-aa28-91de69299ac1",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzBlZWU1OGI1ODQxNDY2ZGVlMTRiM2Y1NmU5ODQzODNjMjM5MDE4ODRmNTYwYjY0MGZiZWFjMDczMGNkMTZhZiJ9fX0="}]}}}
##行動モード変更
tag @s remove PupPriorClose
tag @s remove PupPriorLong
tag @s remove PupPriorMaster
execute if score $PupMaxRecordType PupRecordType matches 1..2 run tag @s add PupPriorClose
execute if score $PupMaxRecordType PupRecordType matches 3..5 run tag @s add PupPriorLong
execute if score $PupMaxRecordType PupRecordType matches 6..9 run tag @s add PupPriorMaster
execute if score $PupMaxRecordType PupRecordType matches 10..12 run function puppet_manager:action/select_sub_mode
##機動力設定
scoreboard players operation @s PupMobility = @e[tag=PupRecordEntity,name=Mobility] PupRecordLevel
scoreboard players operation @s PupSwimmability = @e[tag=PupRecordEntity,name=Swim] PupRecordLevel
scoreboard players operation @s PupFlyability = @e[tag=PupRecordEntity,name=Fly] PupRecordLevel
effect give @s[scores={PupMobility=300..}] minecraft:speed 2 2
effect give @s[scores={PupSwimmability=300..}] minecraft:water_breathing 2 2
effect give @s[scores={PupSwimmability=300..}] minecraft:dolphins_grace 2 2
effect give @s[scores={PupFlyability=300..},x_rotation=-90..0] minecraft:levitation 2 0
effect give @s[scores={PupFlyability=300..}] minecraft:slow_falling 10 19

###行動不可能なものがあるかチェックする
execute at @e[tag=TargetPuppet,limit=1] run function puppet_manager:action/check_unable

###スロット保存
scoreboard players operation $Slot PupCurrentSlot = @s PupCurrentSlot
###ウェィトを計算
scoreboard players remove @s PuppetWait 1
scoreboard players operation @s PuppetWait -= @s[scores={ModeSkill=7121..7129,MP=3..}] ModeSkill
scoreboard players add @s[scores={PuppetWait=..-1,MP=3..}] PuppetWait 7120
scoreboard players add @s[scores={ModeSkill=7121..7129,MP=3..}] MPConsumption 3
###カレントスロットとエンティティのスロットが等しい場合、行動系でないか、１００未満の場合、スロットを進める
execute if score @s PuppetWait matches 0 if entity @e[tag=PupRecordEntity,scores={PupRecordLevel=100..,PupRecordType=..9},limit=1] run function puppet_manager:action/move_slot
scoreboard players add @s[scores={PuppetWait=..0}] PuppetWait 5
###スロット更新
scoreboard players operation @s PupCurrentSlot = $Slot PupCurrentSlot


###対象パペット捕捉終了
tag @e[tag=TargetPuppet] remove TargetPuppet
