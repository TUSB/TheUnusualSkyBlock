##############################
### エンティティ初期化判定
##############################

### 初期化が必要な場合だけ初期化する
execute if entity @s[tag=!System,type=!minecraft:spawner_minecart] run function initialization_manager:check_is_vanilla

### トロッコスポナーは別処理
execute if entity @s[type=!minecraft:spawner_minecart] run function initialization_manager:spawner/initialize

### 初期化タグ付ける
tag @s add Initialized
