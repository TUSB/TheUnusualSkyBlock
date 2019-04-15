##############################
### インタポレーター持ちかどうか判定
##############################

### nbtチェック
execute store result score $Interpolator SuccessCount if entity @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineDerections:[]}}}]}]

### 定義持ちなら読み込み
execute if score $Interpolator SuccessCount matches 1.. run function behaviour_manager:definition_reader/direction/interpolator/read_data
### 定義なしならデフォルト読み込み
execute if score $Interpolator SuccessCount matches ..0 run function behaviour_manager:definition_reader/direction/interpolator/default_data
