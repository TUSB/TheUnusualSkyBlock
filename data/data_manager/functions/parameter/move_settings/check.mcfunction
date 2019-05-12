##############################
### データ管理エンティティが動き定義を持つかどうか
##############################

### パラメータ確認
execute store result score $MoveSettings SuccessCount at 1-0-0-0-0 if data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.LocalMoveSettingsList[0]
execute if score $MoveSettings SuccessCount matches 1.. at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data modify entity @s Item.tag.Parameter.MoveSettings set from entity @s Item.tag.Parameter.LocalMoveSettingsList[0]
