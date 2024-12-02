#> area:system/void/teleport0
#area:voidにいるプレイヤーに対し実行
#読み込み範囲外のため@sでアクセス
function calc:geometry/tp_00000
execute in area:void as 0-0-0-0-0 run function area:system/void/teleport1

effect give @s slow_falling 13 0 false
