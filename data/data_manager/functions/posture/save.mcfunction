##############################
### 姿勢保存
##############################

### 位置
execute at 1-0-0-0-0 run data modify entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.EntityData.Pos set from entity 1-0-1-0-0 Pos
### 向き
execute at 1-0-0-0-0 run data modify entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.EntityData.Rotation set from entity 1-0-1-0-0 Rotation

### エンティティ返却
function data_manager:posture/return
