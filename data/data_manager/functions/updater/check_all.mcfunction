##############################
### データ管理エンティティかどうか確認
##############################

### データ管理エンティティならデータ更新
execute as @e[tag=DataManaged] run function data_manager:updater/update
