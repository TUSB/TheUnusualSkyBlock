#> calc:bit/drop
## BitFlagsのDigit桁目のフラグを落とす

# 今、フラグが立っているかを確認
function calc:bit/get/flag_at_digit

# Digit桁目だけにBitが立っているFlagを取得
function calc:bit/get/flag_of_digit

# 今、フラグが立っているならフラグを落とす
#スコアに移動
execute store result score _ Ret run data get storage calc: Bit.Flags
execute store result score __ _ run data get storage calc: Bit.Flag

execute unless data storage calc: Bit{_:0} store result score _ Ret run scoreboard players operation _ Ret -= __ _
