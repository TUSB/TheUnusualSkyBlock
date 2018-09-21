##############################
### 牛乳飲んだ処理
##############################

### 状態異常回復
scoreboard players operation @s ResistEffects < @s ResistMin

### 最大値調整
function effect_manager:status/modify_max

### トリガーリセット
scoreboard players reset @s UseMilkBucket
