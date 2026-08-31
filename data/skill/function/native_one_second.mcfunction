#> skill:native_one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function skill:native_ten_seconds

# エクリプスフレイム ダメージ
execute if entity @s[tag=EclipseFlameCore] run function skill:act/black_mage/eclipse_flame/deal_damage
