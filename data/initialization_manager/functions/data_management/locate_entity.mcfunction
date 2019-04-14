##############################
### データ管理エンティティ配置
##############################

### 配置
execute in overworld positioned 0.0 0.0 0.0 store result entity @e[distance=0,tag=DataHolder,limit=1] Pos[1] double 0.01 run scoreboard players get @s ManagedDataID
