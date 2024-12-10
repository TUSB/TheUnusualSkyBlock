#> item:sign/click/trade_all/loop_wool
#
# 取引の印判・改 ループ処理
#
# @within function item:sign/click/trade_all/

# white_wool 32 => emerald 1
    clear @s white_wool 32
    give @s emerald 1

# 羊毛の数を測定
    execute store result score _ _ run clear @s white_wool 0

# 32個以上であればループ続行
    execute if score _ _ matches 32.. run function item:sign/click/trade_all/loop_wool
