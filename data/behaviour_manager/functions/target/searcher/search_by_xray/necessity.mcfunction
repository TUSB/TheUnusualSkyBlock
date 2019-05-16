##############################
### ターゲット可能かどうか確認
### 必要性
##############################

### 必要性をチェック
execute unless score $_ TargetID matches 0.. run function behaviour_manager:target/searcher/search_by_xray/angle
