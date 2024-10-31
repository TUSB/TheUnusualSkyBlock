#> calc:bit/rotate/left
## bigflagを左に循環シフト

# スコアに移動
execute store result score __ Calc run data get storage calc: Bit.Flags

execute store result score _ Ret if score __ Calc matches ..-1
scoreboard players set __ _ 2
scoreboard players operation __ Calc *= __ _
execute store result storage calc: Bit.Flags int 1 run scoreboard players operation __ Calc += _ Ret
