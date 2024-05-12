### 1秒処理

### キュアフィールド毎秒処理
execute if entity @s[tag=CureField] run function skill:act/common/cure_field/tick
###エクリプスフレイムダメージ処理
execute if entity @s[tag=EclipseFlameCore] run function skill:act/black_mage/eclipse_flame/deal_damage
###フォトニックレーザーダメージ処理
execute if entity @s[tag=PhotonicMarker] at @e[tag=PhotonicMarker,distance=..0.01,limit=2] positioned ^ ^ ^8 rotated as @e[tag=PhotonicMarker,distance=..8.01,limit=2] positioned ^ ^ ^4 rotated as @e[tag=PhotonicMarker,distance=..12.01,limit=2] positioned ^ ^ ^2 rotated as @e[tag=PhotonicMarker,distance=..14.01,limit=2] positioned ^ ^ ^1 run function skill:act/hunter/photonic_laser/deal_damage
###ぷちブラックダメージ処理
execute if entity @s[tag=PetitBlackStart] run function skill:act/summoner/petit_black/mob_damage1
