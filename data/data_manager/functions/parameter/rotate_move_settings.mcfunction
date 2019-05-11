##############################
### データ管理エンティティがターゲット定義を持つかどうか
##############################

### データをローテートさせる
execute at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data modify entity @s Item.tag.Parameter.MoveSettingsList append from entity @s Item.tag.Parameter.MoveSettings
execute at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data remove entity @s Item.tag.Parameter.MoveSettingsList[0]
