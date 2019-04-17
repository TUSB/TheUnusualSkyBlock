##############################
### 向き定義持ちかどうか判定
##############################

### nbtチェック
execute store result score $Direction SuccessCount if entity @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineDirections:[{}]}}}]}]

### 定義持ちなら読み込み
execute if score $Direction SuccessCount matches 1.. run function behaviour_manager:definition_reader/directions/read_data
### 定義なしならデフォルト読み込み
execute if score $Direction SuccessCount matches ..0 run function behaviour_manager:definition_reader/directions/default_data
