###回復処理
scoreboard players operation @s HP += _ Calc
scoreboard players operation @s HP < @s HPMax

###演出
execute at @s run function makeup:skill/enemy/heal/get_heal

##スキル成功フラグ
scoreboard players set 00000000-0000-0000-0000-000000000000 _ 1
