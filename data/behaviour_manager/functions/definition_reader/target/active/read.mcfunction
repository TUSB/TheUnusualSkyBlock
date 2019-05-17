##############################
### アクティブタイプ読み込み
##############################

### ダメージ時
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{TargetSettings:{Active:OnDamaged}}}}}] run tag @s add Active.OnDamaged

### それ以外は規定値
execute unless entity @s[tag=Active.OnDamaged] run function behaviour_manager:definition_reader/target/active/default

### アクティブ状態かどうかタグ付与
execute if entity @s[tag=Active.OnDamaged] run tag @s add IsNotActive
