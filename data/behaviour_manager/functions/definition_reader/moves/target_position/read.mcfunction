##############################
### ターゲット位置タイプ読み込み
##############################

### ダメージ時
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineBehaviours:{TargetPosition:Memorize}}}}]}] add TargetPosition.Memorize

### それ以外は規定値
execute unless entity @s[tag=TargetPosition.Memorize] run function behaviour_manager:definition_reader/moves/target_position/default
