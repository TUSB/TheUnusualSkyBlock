#> item:sign/click/trade_all/loop_gravel
#
# 
#
# @within function item:sign/click/trade_all/

# gravel 32 => emerald 1
    clear @s gravel 32
    give @s emerald 1

# 砂利の数を測定
    execute store result score _ _ run clear @s gravel 0

# 32個以上であればループ続行
    execute if score _ _ matches 32.. run function item:sign/click/trade_all/loop_gravel
