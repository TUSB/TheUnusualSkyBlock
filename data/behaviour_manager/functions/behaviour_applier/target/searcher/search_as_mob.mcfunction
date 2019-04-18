##############################
### ターゲット探索の種別により振り分け
##############################

### ターゲットIDリセット
scoreboard players set $_ TargetID 0
### 探索距離セット
scoreboard players operation $_ FollowRange = @s FollowRange

### 位置を記憶
execute in overworld run tp 0-0-2-0-1 ~ ~ ~ ~ ~

### 敵の味方は敵
execute if entity @s[tag=Enemy,tag=TargetAlly] as @e[tag=Enemy,tag=MayTargeted,sort=nearest] run function behaviour_manager:behaviour_applier/target/searcher/check_target/necessity
### 敵の敵は味方
execute if entity @s[tag=Enemy,tag=TargetEnemy] as @e[tag=Friendly,tag=MayTargeted,sort=nearest] run function behaviour_manager:behaviour_applier/target/searcher/check_target/necessity
### 味方の味方は味方
execute if entity @s[tag=Friendly,tag=TargetAlly] as @e[tag=Friendly,tag=MayTargeted,sort=nearest] run function behaviour_manager:behaviour_applier/target/searcher/check_target/necessity
### 味方の敵は敵
execute if entity @s[tag=Friendly,tag=TargetEnemy] as @e[tag=Enemy,tag=MayTargeted,sort=nearest] run function behaviour_manager:behaviour_applier/target/searcher/check_target/necessity

### ヒットしようとしまいとセットしてok
scoreboard players operation @s TargetID = $_ TargetID
### ヒットした時だけタグはセット
execute if score $_ TargetID matches 1.. run tag @s add HasTarget
