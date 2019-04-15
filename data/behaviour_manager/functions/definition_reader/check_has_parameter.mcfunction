##############################
### パラメータ持ちかどうか判定
##############################

### nbtチェック
execute store success score $c1 SuccessFlag if entity @s[nbt={Passengers:[{Tags:[Parameter]}]}]

### パラメータ持ちなら
execute if score $c1 SuccessCount matches 1.. run function behaviour_manager:definition_reader/read_data
### パラメータなしならデフォルト読み込み
execute if score $c1 SuccessCount matches ..0 run function behaviour_manager:definition_reader/default_data

### どちらでもバニラ情報は読み込み
function behaviour_manager:definition_reader/vanilla/follow_range/read
