#> effect:enemy_debuff/fear/blow_off
#
# 敵畏怖吹っ飛び処理
#
# @within function enemy:damage/hit

# インターバルが残っていれば失敗
execute if score @s FearInterval matches 1.. run return fail

# インターバル付与
scoreboard players set @s FearInterval 2

# Motion＝-3/({@s Pos}-{@p Pos})
scoreboard players set _ _ -3
execute store result score @s Calc run data get entity @a[limit=1,sort=nearest] Pos[0]
execute store result score @s _ run data get entity @s Pos[0]
scoreboard players operation @s Calc -= @s _
execute store result entity @s Motion[0] double 1 run scoreboard players operation _ _ /= @s Calc

scoreboard players set _ _ -3
execute store result score @s Calc run data get entity @a[limit=1,sort=nearest] Pos[1]
execute store result score @s _ run data get entity @s Pos[1]
scoreboard players operation @s Calc -= @s _
execute store result entity @s Motion[1] double 1 run scoreboard players operation _ _ /= @s Calc

scoreboard players set _ _ -3
execute store result score @s Calc run data get entity @a[limit=1,sort=nearest] Pos[2]
execute store result score @s _ run data get entity @s Pos[2]
scoreboard players operation @s Calc -= @s _
execute store result entity @s Motion[2] double 1 run scoreboard players operation _ _ /= @s Calc

function makeup:effect/enemy_debuff/fear/blow_off
