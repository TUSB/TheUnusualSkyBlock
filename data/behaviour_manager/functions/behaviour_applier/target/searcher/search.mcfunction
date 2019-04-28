##############################
### ターゲット探索の種別により振り分け
##############################

### ターゲットIDリセット
scoreboard players set $_ TargetID 0
### 探索距離セット
scoreboard players operation $_ FollowRange = @s FollowRange

### 位置を記憶
execute in overworld run tp 0-0-2-0-1 ~ ~ ~ ~ ~

### 検知タイプ一時保存
scoreboard players set $_ DetectType 0
execute if entity @s[tag=Detect.Sight] run scoreboard players set $_ DetectType 2
execute if entity @s[tag=Detect.Perspective] run scoreboard players set $_ DetectType 1

### 敵の味方は敵
execute if entity @s[tag=Enemy,tag=Target.Ally] as @e[tag=Enemy,tag=MayTargeted,sort=nearest] run function behaviour_manager:behaviour_applier/target/searcher/check_target/necessity
### 敵の敵は味方
execute if entity @s[tag=Enemy,tag=Target.Enemy] as @e[tag=Friendly,tag=MayTargeted,sort=nearest] run function behaviour_manager:behaviour_applier/target/searcher/check_target/necessity
### 味方の味方は味方
execute if entity @s[tag=Friendly,tag=Target.Ally] as @e[tag=Friendly,tag=MayTargeted,sort=nearest] run function behaviour_manager:behaviour_applier/target/searcher/check_target/necessity
### 味方の敵は敵
execute if entity @s[tag=Friendly,tag=Target.Enemy] as @e[tag=Enemy,tag=MayTargeted,sort=nearest] run function behaviour_manager:behaviour_applier/target/searcher/check_target/necessity

### エンティティ返却
function uuid_entity_manager:00201/return

### ヒットしようとしまいとセットしてok
scoreboard players operation @s TargetID = $_ TargetID
### ヒットした時だけターゲット付与処理
execute if score $_ TargetID matches 1.. run function behaviour_manager:behaviour_applier/target/searcher/on_hit/common
