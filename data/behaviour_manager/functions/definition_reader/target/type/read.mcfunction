##############################
### ターゲットタイプ読み込み
##############################

### Allyをターゲット
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{TargetSettings:{Target:Ally}}}}}] run tag @s add Target.Ally
### Enemyをターゲット
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{TargetSettings:{Target:Enemy}}}}}] run tag @s add Target.Enemy

### それ以外は規定値
execute if entity @s[tag=!Target.Ally,tag=!Target.Enemy] run function behaviour_manager:definition_reader/target/type/default

### ターゲットを取るかどうかタグ付与
execute unless entity @s[tag=!Target.Ally,tag=!Target.Enemy] run tag @s add UseTarget
