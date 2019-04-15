##############################
### ターゲット定義持ちかどうか判定
##############################

### nbtチェック
execute store result score $c2 SuccessCount if entity @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{}}}}]}]

### 定義持ちなら読み込み
execute if score $c2 SuccessCount matches 1.. run function behaviour_manager:definition_reader/target/read_data
### 定義なしならデフォルト読み込み
execute if score $c2 SuccessCount matches ..0 run function behaviour_manager:definition_reader/target/default_data

### 探索開始時間を規定値に設定(ms)
scoreboard players set @s TimeToSearch 5000
