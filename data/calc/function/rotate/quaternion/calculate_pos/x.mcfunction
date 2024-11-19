#> calc:rotate/quaternion/calculate_pos/x
## ## _ この計算の結果を保存する一時変数1
## ## Calc 一時変数2
## 1項目 (checked)
##a^2+b^2-c^2+d^2
scoreboard players operation ## _ = __ Calc
scoreboard players operation ## _ += __ sm.X
scoreboard players operation ## _ -= __ sm.Y
scoreboard players operation ## _ -= __ sm.Z
##fをかける
scoreboard players operation ## _ *= 00000000-0000-0000-0000-000000000001 sm.X

##最終結果に代入
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.Z = ## _


## 2項目 (checked)
##-dg+ch
scoreboard players operation ## Calc = 00000000-0000-0000-0000-000000000002 sm.Y
scoreboard players operation ## Calc *= 00000000-0000-0000-0000-000000000001 sm.Z
##一時変数1に代入
scoreboard players operation ## _ = ## Calc


scoreboard players operation ## Calc = 00000000-0000-0000-0000-000000000002 _
scoreboard players operation ## Calc *= 00000000-0000-0000-0000-000000000001 sm.Y
##一時変数1に減算
scoreboard players operation ## _ -= ## Calc

##aをかける
scoreboard players operation ## _ *= 00000000-0000-0000-0000-000000000002 Calc
##2倍
scoreboard players operation ## _ += ## _

##最終結果に加算
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.Z += ## _

## 3項目 (checked)
##cg+dh
scoreboard players operation ## Calc = 00000000-0000-0000-0000-000000000002 sm.Y
scoreboard players operation ## Calc *= 00000000-0000-0000-0000-000000000001 sm.Y
##一時変数1に代入
scoreboard players operation ## _ = ## Calc

scoreboard players operation ## Calc = 00000000-0000-0000-0000-000000000002 _
scoreboard players operation ## Calc *= 00000000-0000-0000-0000-000000000001 sm.Z
##一時変数1に加算
scoreboard players operation ## _ += ## Calc
##bをかける
scoreboard players operation ## _ *= 00000000-0000-0000-0000-000000000002 sm.X
##2倍
scoreboard players operation ## _ += ## _

##最終結果に加算
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.Z += ## _

