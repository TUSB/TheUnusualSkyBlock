##############################
### 敵データ管理初期化
##############################

### データ管理ID採番
function data_manager:initializer/define_id

### データ管理エンティティ生成
function data_manager:initializer/create_entity

### データ管理エンティティパラメータセット
function data_manager:initializer/set_parameter

### データ管理エンティティタグ設定
execute at 1-0-0-0-0 run tag @e[distance=0,tag=DataHolder,limit=1] add AllyData

### データ管理タグ付与
tag @s add DataManaged
