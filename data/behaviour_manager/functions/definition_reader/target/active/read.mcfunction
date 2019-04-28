##############################
### アクティブタイプ読み込み
##############################

### ダメージ時
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{Active:Damaged}}}}]}] add Active.Damaged

### それ以外は規定値
execute unless entity @s[tag=Active.Damaged] run function behaviour_manager:definition_reader/target/active/default

### アクティブ状態かどうかタグ付与
execute if entity @s[tag=Active.Damaged] run tag @s add IsNotActive
