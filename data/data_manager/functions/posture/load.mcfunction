##############################
### 姿勢再現
##############################

### コピーエンティティの場合は寿命を設定(10秒)
execute at 1-0-0-0-0 run scoreboard players set @e[distance=0,tag=DataHolder,tag=Copy,limit=1] GlobalCSTimer -1000

### 位置
execute at 1-0-0-0-0 run data modify entity 1-0-1-0-0 Pos set from entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.EntityData.Pos
### 向き
execute at 1-0-0-0-0 run data modify entity 1-0-1-0-0 Rotation set from entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.EntityData.Rotation
