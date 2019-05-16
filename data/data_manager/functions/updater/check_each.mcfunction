##############################
### 管理データ更新
##############################

### カーソル移動
function data_manager:move_cursor/data_id

### データ更新
execute if entity @s[tag=!Light] at 1-0-0-0-0 run function data_manager:updater/update

### エンティティ存在フラグ付与
execute at 1-0-0-0-0 run scoreboard players set @e[distance=0,tag=DataHolder,limit=1] GlobalCSTimer -100
### 向き保存
# execute at 1-0-0-0-0 rotated as @s run tp @e[distance=0,tag=DataHolder,limit=1] ~ ~ ~ ~ ~
