##############################
### 敵データ管理初期化
##############################

### データ管理ID採番
function initialization_manager:data_management/define_id

### データ管理エンティティ生成
function initialization_manager:data_management/create_entity

### データ管理エンティティパラメータセット
function initialization_manager:data_management/set_parameter

### データ管理エンティティタグ設定
execute in overworld positioned 0.0 0.0 0.0 run tag @e[distance=0,tag=DataHolder,limit=1] add AllyData

### データ管理エンティティ配置
function initialization_manager:data_management/locate_entity

### データ管理タグ付与
tag @s add DataManaged
