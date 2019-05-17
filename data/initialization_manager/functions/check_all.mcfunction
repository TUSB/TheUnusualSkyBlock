##############################
### エンティティ初期化全対象チェック
### 全て@eのはず
##############################

### 未初期化エンティティを初期化する
execute as @e[tag=!Initialized,tag=!Parameter] run function initialization_manager:check_necessity

### パラメーターを削除
execute as @e[tag=Parameter] run function finalization_manager:kill_immidiately
