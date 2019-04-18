##############################
### ターゲット可能かどうか確認
### その１.必要性
##############################

### 必要性をチェック
execute unless score $_ TargetID matches 1.. run function behaviour_manager:behaviour_applier/target/searcher/check_target/angle
