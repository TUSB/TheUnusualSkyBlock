
## # _ この計算の結果を保存する一時変数1
## # Calc 一時変数2
## 1項目 (checked)
##a^2-b^2-c^2+d^2
scoreboard players operation # _ = _ Calc
scoreboard players operation # _ -= _ sm.X
scoreboard players operation # _ -= _ sm.Y
scoreboard players operation # _ += _ sm.Z
##hをかける
scoreboard players operation # _ *= 00000000-0000-0000-0000-000000000001 sm.Z

##最終結果に代入
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.Z = # _


## 2項目 (checked)
##-cf+bg
scoreboard players operation # Calc = 00000000-0000-0000-0000-000000000002 sm.X
scoreboard players operation # Calc *= 00000000-0000-0000-0000-000000000001 sm.Y
##一時変数1に代入
scoreboard players operation # _ = # Calc


scoreboard players operation # Calc = 00000000-0000-0000-0000-000000000002 sm.Y
scoreboard players operation # Calc *= 00000000-0000-0000-0000-000000000001 sm.X
##一時変数1に減算
scoreboard players operation # _ -= # Calc


##aをかける
scoreboard players operation # _ *= 00000000-0000-0000-0000-000000000002 Calc
##2倍
scoreboard players operation # _ += # _

##最終結果に加算
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.Z += # _

## 3項目 (checked)
##bf+cg
scoreboard players operation # Calc = 00000000-0000-0000-0000-000000000002 sm.X
scoreboard players operation # Calc *= 00000000-0000-0000-0000-000000000001 sm.X
##一時変数1に代入
scoreboard players operation # _ = # Calc

scoreboard players operation # Calc = 00000000-0000-0000-0000-000000000002 sm.Y
scoreboard players operation # Calc *= 00000000-0000-0000-0000-000000000001 sm.Y
##一時変数1に加算
scoreboard players operation # _ += # Calc
##dをかける
scoreboard players operation # _ *= 00000000-0000-0000-0000-000000000002 _
##2倍
scoreboard players operation # _ += # _


##最終結果に加算
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.Z += # _
