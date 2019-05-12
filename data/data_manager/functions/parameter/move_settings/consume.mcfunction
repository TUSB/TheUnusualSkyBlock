##############################
### ローカルの動き定義データの消費処理
##############################

### 持ち越し
execute if entity @s[tag=CarryMove] at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data modify entity @s Item.tag.Parameter.LocalMoveSettingsList append from entity @s Item.tag.Parameter.MoveSettings
execute at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data remove entity @s Item.tag.Parameter.LocalMoveSettingsList[0]
