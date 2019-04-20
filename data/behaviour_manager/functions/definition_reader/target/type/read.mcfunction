##############################
### ターゲットタイプ読み込み
##############################

### ターゲットした、自身にとって味方側のモブ
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{Target:Ally}}}}]}] add Target.Ally
### ターゲットした、自身にとって敵側のモブ
tag @s[nbt={Passengers:[{Tags:[Parameter],Item:{tag:{DefineTarget:{Target:Enemy}}}}]}] add Target.Enemy

### それ以外は規定値
execute if entity @s[tag=!Target.Ally,tag=!Target.Enemy] run function behaviour_manager:definition_reader/target/type/default

### ターゲットを取るかどうかタグ付与
execute unless entity @s[tag=!Target.Ally,tag=!Target.Enemy] run tag @s add UseTarget
