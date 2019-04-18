##############################
### ターゲット可能かどうか確認
### その２.角度
##############################

### 角度確認
execute anchored eyes positioned ^ ^ ^ anchored feet facing entity 0-0-2-0-1 eyes positioned ^ ^ ^2 rotated as 0-0-2-0-1 positioned ^ ^ ^2 if entity @s[distance=..1] run function behaviour_manager:behaviour_applier/target/searcher/check_target/distance
