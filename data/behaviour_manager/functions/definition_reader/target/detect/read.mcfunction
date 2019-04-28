##############################
### ターゲット検知方法読み込み
##############################

### 前方視線判定なし
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{Detect:Perspective}}}}]}] add Detect.Perspective
### 前方視線判定あり
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{Detect:Sight}}}}]}] add Detect.Sight

### それ以外は規定値
execute if entity @s[tag=!Detect.Perspective,tag=!Detect.Sight] run function behaviour_manager:definition_reader/target/detect/default
