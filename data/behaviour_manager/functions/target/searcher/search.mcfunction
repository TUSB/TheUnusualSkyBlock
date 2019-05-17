##############################
### ターゲット探索の種別により振り分け
##############################

### 探索間隔を5秒あける
scoreboard players operation @s SearcherToStart = @s GlobalCSTimer
scoreboard players add @s SearcherToStart 500

### ターゲットIDリセット
scoreboard players reset @s TargetID
scoreboard players reset $_ TargetID
### 探索距離セット
scoreboard players operation $_ FollowRange = @s FollowRange

### 位置を記憶
execute in overworld run tp 0-0-2-0-1 ~ ~ ~ ~ ~

### タイプ別に検知
execute if entity @s[tag=Detect.Nearest] run function behaviour_manager:target/searcher/search_nearest/search
execute if entity @s[tag=Detect.ByXRay] run function behaviour_manager:target/searcher/search_by_xray/search
execute if entity @s[tag=Detect.BySight] run function behaviour_manager:target/searcher/search_by_sight/search

### エンティティ返却
function uuid_entity_manager:00201/return

### ヒットした時だけターゲット付与処理
execute if score $_ TargetID matches 0.. run function behaviour_manager:target/searcher/on_hit/common
