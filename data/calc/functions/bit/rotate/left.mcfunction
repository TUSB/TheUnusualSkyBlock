
## bigflagを左に循環シフト

# スコアに移動
execute store result score _ Calc run data get storage calc: Bit.Flags

execute store result score _ Ret if score _ Calc matches ..-1
scoreboard players set _ _ 2
scoreboard players operation _ Calc *= _ _
execute store result storage calc: Bit.Flags int 1 run scoreboard players operation _ Calc += _ Ret
