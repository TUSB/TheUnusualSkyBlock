##############################
### データ管理エンティティかどうか確認
##############################

### データ管理エンティティならデータ更新
execute as @e[type=!minecraft:player] run function data_manager:updater/update
execute as @a run function data_manager:updater/update
