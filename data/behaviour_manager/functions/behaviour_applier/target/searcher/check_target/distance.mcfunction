##############################
### ターゲット可能かどうか確認
### その３.距離
##############################

### 距離確認
execute positioned as 0-0-2-0-1 run function calc_manager:distance/magnitude
execute if score $Result Distance < $_ FollowRange run function behaviour_manager:behaviour_applier/target/searcher/check_target/sight
