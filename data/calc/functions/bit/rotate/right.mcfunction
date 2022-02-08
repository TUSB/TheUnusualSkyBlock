
## bigflagを右に循環シフト

# スコアに移動
execute store result score _ Calc store result score _ Ret run data get storage calc: Bit.Flags

scoreboard players set _ _ 2
scoreboard players operation _ Ret %= _ _
scoreboard players operation _ Calc /= _ _

#IntMin
scoreboard players set _ _ -2147483648

execute if score _ Calc matches ..-1 run scoreboard players operation _ Calc += _ _
execute if score _ Ret matches 1 run scoreboard players operation _ Calc += _ _

execute store result storage calc: Bit.Flags int 1 run scoreboard players get _ Calc
