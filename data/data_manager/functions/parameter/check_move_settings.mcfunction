##############################
### データ管理エンティティがターゲット定義を持つかどうか
##############################

### パラメータ確認
execute store result score $MoveSettings SuccessCount at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data modify entity @s Item.tag.Parameter.MoveSettings set from entity @s Item.tag.Parameter.MoveSettingsList[0]
### データをローテートさせる
execute if score $MoveSettings SuccessCount matches 1.. at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data modify entity @s Item.tag.Parameter.MoveSettingsList append from entity @s Item.tag.Parameter.MoveSettings
execute if score $MoveSettings SuccessCount matches 1.. at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data remove entity @s Item.tag.Parameter.MoveSettingsList[0]
