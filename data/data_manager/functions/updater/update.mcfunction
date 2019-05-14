##############################
### 管理データ更新
##############################

### カーソル移動
function data_manager:move_cursor/data_id

### データ更新
execute if entity @s[tag=!Light] at 1-0-0-0-0 run data modify entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.EntityData set from entity @s

### エンティティ存在フラグ付与
execute at 1-0-0-0-0 run scoreboard players set @e[distance=0,tag=DataHolder,limit=1] GlobalCSTimer -100
