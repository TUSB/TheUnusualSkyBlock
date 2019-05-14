##############################
### ステータス定義持ちかどうか判定
##############################

### nbtチェック
function data_manager:parameter/status_settings/check

### 定義持ちなら読み込み
execute if score $StatusSettings SuccessCount matches 1.. run function status_manager:definition_reader/read_data
### 定義なしならデフォルト読み込み
execute if score $StatusSettings SuccessCount matches ..0 run function status_manager:definition_reader/default_data

### 最大ダメージをHPと同じに
scoreboard players operation @s MaxHP = @s HP
### HPがそもそもないならタグを付与
execute unless entity @s[team=] unless entity @s[team=!] run tag @s add NoNaturalDamage
### AbsorptionAmountを1000000に設定
execute if entity @s[tag=NoNaturalDamage] run data merge entity @s {AbsorptionAmount:1000000f}
