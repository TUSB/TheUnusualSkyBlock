###回復処理
scoreboard players operation @s HP += _ Calc
scoreboard players operation @s HP < @s HPMax

#回復量表示
scoreboard players set _ _ -1
scoreboard players operation 00000000-0000-0000-0000-000000000000 StoredDamage = _ Calc
scoreboard players operation 00000000-0000-0000-0000-000000000000 StoredDamage *= _ _
execute anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function enemy:show_damage/show
###演出
execute at @s run function makeup:skill/enemy/heal/get_heal

##スキル成功フラグ
scoreboard players set 00000000-0000-0000-0000-000000000000 _ 1
