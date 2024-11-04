#> calc:bit/rotate/left
## bigflagを右に循環シフト

# スコアに移動
execute store result score __ Calc store result score _ Ret run data get storage calc: Bit.Flags

scoreboard players set __ _ 2
scoreboard players operation _ Ret %= __ _
scoreboard players operation __ Calc /= __ _

#IntMin
scoreboard players set __ _ -2147483648

execute if score __ Calc matches ..-1 run scoreboard players operation __ Calc += __ _
execute if score _ Ret matches 1 run scoreboard players operation __ Calc += __ _

execute store result storage calc: Bit.Flags int 1 run scoreboard players get __ Calc
