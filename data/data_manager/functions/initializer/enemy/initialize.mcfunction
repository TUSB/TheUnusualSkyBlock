##############################
### 敵データ管理初期化
##############################

### データ管理エンティティ生成
function data_manager:initializer/create_entity

### データ管理エンティティパラメータセット
function data_manager:parameter/set

### データ管理エンティティタグ設定
execute at 1-0-0-0-0 run tag @e[distance=0,tag=DataHolder,limit=1] add EnemyData
execute if entity @s[tag=Boss] at 1-0-0-0-0 run tag @e[distance=0,tag=DataHolder,limit=1] add BossData

### データ管理タグ付与
tag @s add DataManaged
tag @s[tag=!Light,tag=!Bullet] add MayTargeted
