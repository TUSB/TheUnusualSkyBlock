#> skill:native_one_second
#
# 1秒処理

# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function skill:native_ten_seconds

## スキル
# キュアフィールド毎秒処理
execute if entity @s[tag=CureField] run function skill:act/common/cure_field/tick
# ぷちブラックダメージ処理
execute if entity @s[tag=PetitBlackStart] run function skill:act/summoner/petit_black/mob_damage1
