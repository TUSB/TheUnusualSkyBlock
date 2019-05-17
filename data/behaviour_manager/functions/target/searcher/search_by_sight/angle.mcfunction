##############################
### ターゲット可能かどうか確認
### 角度
##############################

### 角度okなら距離へ
execute at @s facing entity 0-0-2-0-1 feet positioned ^ ^ ^10 rotated as 0-0-2-0-1 positioned ^ ^ ^10 if entity @s[distance=..8.66] run function behaviour_manager:target/searcher/search_by_sight/distance
