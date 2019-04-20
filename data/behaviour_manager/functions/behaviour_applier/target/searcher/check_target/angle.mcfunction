##############################
### ターゲット可能かどうか確認
### その２.角度
##############################

### 検知タイプがNearestなら角度判定パス
execute unless score $_ DetectType matches 1.. run function behaviour_manager:behaviour_applier/target/searcher/check_target/distance
### 角度確認
execute if score $_ DetectType matches 1.. at @s facing entity 0-0-2-0-1 feet positioned ^ ^ ^2 rotated as 0-0-2-0-1 positioned ^ ^ ^2 if entity @s[distance=..1] run function behaviour_manager:behaviour_applier/target/searcher/check_target/distance
