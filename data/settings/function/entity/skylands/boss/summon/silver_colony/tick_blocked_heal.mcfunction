#Function
# 回復量は9999
    scoreboard players set _ _ 9999
# 回復処理
    scoreboard players operation @s HP += _ _
    scoreboard players operation @s HP < @s HPMax
# 回復量表示
    scoreboard players set _ Calc -1
    scoreboard players operation 00000000-0000-0000-0000-000000000000 StoredDamage = _ _
    scoreboard players operation 00000000-0000-0000-0000-000000000000 StoredDamage *= _ Calc
    execute at @s anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function enemy:show_damage/show
# 演出
    execute at @s run function makeup:skill/enemy/heal/get_heal
