#> enemy:break_spawner/failed_mine
#
# 復元処理
#
# @within function enemy:break_spawner/enemy_count

# アイテムキル
    execute as @e[distance=..2,type=item,nbt={Item:{tag:{DamageItem:1b}}},sort=nearest,limit=1] run kill @s
    execute as @e[distance=..2,type=item,nbt={Item:{tag:{DoubleBreak:1b}}},sort=nearest,limit=1] run kill @s

# カウントが減っていないことを表示
    execute store result score _ _ run data get entity @s item.tag.Count 1
    function enemy:break_spawner/count_down

# タグ付け
    tag @s add Failed

# 経験値オーブをKill
    kill @e[distance=..2,type=experience_orb]