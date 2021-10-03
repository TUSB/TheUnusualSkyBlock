
## BitFlagsのDigit桁目のフラグを立てる

# 今、フラグが立っているかを確認
function calc:bit/get/flag_at_digit

# Digit桁目だけにBitが立っているFlagを取得
function calc:bit/get/flag_of_digit

# 今、フラグが立っていないならフラグを立てる
#スコアに移動
execute store result score _ Calc run data get storage calc: Bit.Flags
execute store result score _ _ run data get storage calc: Bit.Flag

execute if data storage calc: Bit{_:0} store result storage calc: Bit.Flags int 1 run scoreboard players operation _ Calc += _ _
