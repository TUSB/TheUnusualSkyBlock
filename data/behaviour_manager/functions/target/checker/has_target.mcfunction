##############################
### ターゲット探索が要るかどうか判定
##############################

### ターゲットを持っていない &&
### ノンアクティブでない &&
### 探索可能時間
execute if entity @s[tag=!HasTarget,tag=!IsNotActive] unless score @s GlobalCSTimer < @s SearcherToStart at @s run function behaviour_manager:target/searcher/search
