##############################
### ターゲット位置タイプ読み込み
##############################

### 記憶
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineMove:{TargetPosition:Memorize}}}}]}] add TargetPosition.Memorize
### 向きだけ記憶
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineMove:{TargetPosition:Direction}}}}]}] add TargetPosition.Direction

### それ以外は規定値
execute if entity @s[tag=!TargetPosition.Memorize,tag=!TargetPosition.Direction] run function behaviour_manager:definition_reader/moves/target_position/default
