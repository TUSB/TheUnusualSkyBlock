##############################
### 管理データ更新
##############################

### データ更新
data modify entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.EntityData set from entity @s
execute positioned as @s anchored eyes positioned ^ ^ ^ anchored feet run tp 1-0-1-0-0 ~ ~ ~ ~ ~
data modify entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.EyePosition set from entity 1-0-1-0-0 Pos
