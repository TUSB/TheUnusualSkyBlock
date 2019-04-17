##############################
### アクティブタイプ読み込み
##############################

### ダメージ時
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{ActiveType:Damaged}}}}]}] add ActiveType.Damaged

### それ以外は規定値
execute unless entity @s[tag=ActiveType.Damaged] run function behaviour_manager:definition_reader/target/active/default

### アクティブ状態かどうかタグ付与
execute if entity @s[tag=ActiveType.Damaged] run tag @s add IsNotActive
