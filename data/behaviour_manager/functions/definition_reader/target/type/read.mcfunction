##############################
### ターゲットタイプ読み込み
##############################

### 一番近いプレイヤー
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{TargetType:NearPlayer}}}}]}] add TargetType.NearPlayer
### ターゲットした、自身にとって味方側のモブ
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{TargetType:TargetAlly}}}}]}] add TargetType.TargetAlly
### ターゲットした、自身にとって敵側のモブ
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{TargetType:TargetEnemy}}}}]}] add TargetType.TargetEnemy

### それ以外は規定値
execute if entity @s[tag=!TargetType.NearPlayer,tag=!TargetType.TargetAlly,tag=!TargetType.TargetEnemy] run function behaviour_manager:definition_reader/target/type/default

### ターゲットを取るかどうかタグ付与
execute unless entity @s[tag=!TargetType.TargetAlly,tag=!TargetType.TargetEnemy] run tag @s add UseTarget
