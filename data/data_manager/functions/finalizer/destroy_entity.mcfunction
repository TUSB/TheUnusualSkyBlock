##############################
### データ管理エンティティ削除
##############################

### カーソル移動
function data_manager:cursor/data_id/move

### エンティティ削除
execute at 1-0-0-0-0 run kill @e[distance=0,tag=DataHolder,limit=1]
