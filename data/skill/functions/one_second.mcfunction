### 1秒処理

### キュアフィールド毎秒処理
execute if entity @s[tag=CureField] run function skill:act/common/cure_field/tick

###時間加速毎秒処理
execute if entity @s[tag=TimeAcceleration] run function skill:act/common/time_acceleration/one_second
