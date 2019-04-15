##############################
### ターゲットタイプ読み込み
##############################

### 一番近いプレイヤー
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{TargetType:NearPlayer}}}}]}] add TargetType.NearPlayer
### ターゲットしたプレイヤー
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{TargetType:TargetPlayer}}}}]}] add TargetType.TargetPlayer
### ターゲットした、自身にとって味方側のモブ
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{TargetType:TargetAlly}}}}]}] add TargetType.TargetAlly
### ターゲットした、自身にとって敵側のモブ
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{TargetType:TargetEnemy}}}}]}] add TargetType.TargetEnemy

### それ以外は規定値
tag @s[tag=!TargetType.NearPlayer,tag=!TargetType.TargetPlayer,tag=!TargetType.TargetAlly,tag=!TargetType.TargetEnemy] add TargetType.Natural

### ターゲットを取るかどうかタグ付与
execute unless entity @s[tag=!TargetType.TargetPlayer,tag=!TargetType.TargetAlly,tag=!TargetType.TargetEnemy] run tag @s add UseTarget
