#Function
## 攻撃範囲の表示
scoreboard players operation _ _ = $Tick Count
scoreboard players set _ Calc 2
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 run function settings:enemy/skylands/boss/shoot/zedra_aec/2_range
## 溜め音
function settings:enemy/skylands/boss/shoot/zedra_aec/2_charge
