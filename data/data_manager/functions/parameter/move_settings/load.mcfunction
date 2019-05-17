##############################
### 動き定義をローカル保存
##############################

### ローカル保存
execute at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data modify entity @s Item.tag.Parameter.LocalMoveSettingsList set from entity @s Item.tag.Parameter.MoveSettingsList
