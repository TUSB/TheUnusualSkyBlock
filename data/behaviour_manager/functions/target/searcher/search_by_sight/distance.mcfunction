##############################
### ターゲット可能かどうか確認
### 距離
##############################

### 距離確認
execute positioned as 0-0-2-0-1 run function calc_manager:distance/magnitude

### 距離以内ならスコア取得
execute if score $Result Distance < $_ FollowRange run function behaviour_manager:target/searcher/search_by_sight/sight
