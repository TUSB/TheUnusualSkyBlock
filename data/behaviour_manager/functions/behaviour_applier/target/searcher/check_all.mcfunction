##############################
### ターゲット探索が要るかどうか判定
##############################

### ターゲットを取るタイプ && 
### ターゲットを持っていない&& 
### ノンアクティブでない && 
### 探し始める時間を超えている
# execute if entity @s[tag=UseTarget,tag=!HasTarget,tag=!IsNotActive] if score @s TimeToSearch < @s GlobalCSTimer run function behaviour_manager:behaviour_applier/target/searcher/search

### ターゲットを取るタイプ && 
### 弾でない && 
### ターゲットを持っていない&& 
### ノンアクティブでない && 
### ランダム１体
execute as @e[tag=UseTarget,tag=!Bullet,tag=!HasTarget,tag=!IsNotActive,sort=random,limit=1] at @s run function behaviour_manager:behaviour_applier/target/searcher/search_as_mob
