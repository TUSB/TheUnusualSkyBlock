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
### ヒットした時だけタグはセット
execute if score $_ TargetID matches 1.. run tag @s add HasTarget
### ターゲット位置更新タイプがMemorizeなら、コピーを生成
execute if entity @s[tag=HasTarget,tag=TargetPosition.Memorize] run function behaviour_manager:behaviour_applier/target/searcher/memorize

### カーソル移動
function data_manager:move_cursor/target_id
### 姿勢読み込み
function data_manager:posture/load
### 向く
execute facing entity 1-0-1-0-0 feet run tp @s ~ ~ ~ ~ ~
### 向き保存
execute store result score @s RotateAngle run data get entity @s Rotation[0] 100
execute store result score @s TiltAngle run data get entity @s Rotation[1] 100
### 向き補正
scoreboard players operation @s RotateAngle += @s RotateOffset
scoreboard players operation @s TiltAngle += @s TiltOffset

