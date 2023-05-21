#Function
#回復量は最大HPの20%で最大 (100+魔法攻撃力)
scoreboard players set _ _ 20
scoreboard players set _ Calc 100
scoreboard players operation _ _ *= @s HPMax
scoreboard players operation _ _ /= _ Calc
scoreboard players operation _ Calc += # SpecialAttack
scoreboard players operation _ _ < _ Calc

#回復処理
scoreboard players operation @s HP += _ _
scoreboard players operation @s HP < @s HPMax

#回復量表示
scoreboard players set _ Calc -1
scoreboard players operation 00000000-0000-0000-0000-000000000000 StoredDamage = _ _
scoreboard players operation 00000000-0000-0000-0000-000000000000 StoredDamage *= _ Calc
execute at @s anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function enemy:show_damage/show

#演出
execute at @s run function makeup:skill/enemy/heal/get_heal
