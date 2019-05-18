##############################
### 管理データ更新(モブ)
##############################

### データ更新
# if entity @s[tag=!Light]
execute at 1-0-0-0-0 run function data_manager:updater/update

### エンティティ存在フラグ付与
execute at 1-0-0-0-0 run scoreboard players set @e[distance=0,tag=DataHolder,limit=1] GlobalCSTimer -100
