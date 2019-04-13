##############################
### エンティティ初期化判定
##############################

### 初期化が必要な場合だけ初期化する
execute as @s[tag=!System] run function initialization_manager:initialize/main_each

### 初期化タグ付ける
tag @s add Initialized
