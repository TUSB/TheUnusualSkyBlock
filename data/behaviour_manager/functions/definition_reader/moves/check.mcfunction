##############################
### 向き定義持ちかどうか判定
##############################

### nbtチェック
execute store result score $Direction SuccessCount if entity @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineMoves:[{}]}}}]}]

### 定義持ちなら読み込み
execute if score $Direction SuccessCount matches 1.. run function behaviour_manager:definition_reader/moves/read_data
### 定義なしならデフォルト読み込み
execute if score $Direction SuccessCount matches ..0 run function behaviour_manager:definition_reader/moves/default_data
