##############################
### ターゲット探索が要るかどうか判定
##############################

### ターゲットを取るタイプ && 
### ターゲットを持っていない&& 
### ノンアクティブでない && 
### ランダム１体
execute as @e[tag=UseTarget,tag=!HasTarget,tag=!IsNotActive,tag=!Repeater.Broken,sort=random,limit=1] at @s run function behaviour_manager:behaviour_applier/target/searcher/search
