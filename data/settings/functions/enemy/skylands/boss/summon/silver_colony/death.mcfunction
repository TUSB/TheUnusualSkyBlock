#Function
# 周囲のブロックをお掃除してから消える
    fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace infested_cracked_stone_bricks
# 湧いた場所が廃病院ならスポナー破壊処理
    execute if predicate settings:enemy/conditions/silver_colony if entity @a[predicate=entity:player,distance=..64] run function settings:enemy/skylands/boss/summon/silver_colony/death2
