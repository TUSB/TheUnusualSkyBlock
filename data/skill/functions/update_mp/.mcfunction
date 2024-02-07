
### MP更新

### MPアクセラ
execute unless score @s MPAcceleration matches 900.. run scoreboard players add @s MPAcceleration 1

### Lv + MPMax/10 + 40 2000で1回復
scoreboard players operation _ _ = @s Level
scoreboard players set _ Calc 50
scoreboard players operation _ _ < _ Calc
scoreboard players operation _ MPMax = @s MPMax
scoreboard players set _ Calc 10
scoreboard players operation _ MPMax /= _ Calc
scoreboard players operation _ _ += _ MPMax
scoreboard players add _ _ 40
execute if score @s MPAcceleration matches 1.. run scoreboard players operation _ _ += @s MPAcceleration

### 適用
scoreboard players operation @s MPHealingWait -= _ _

### 0でMP1回復
execute if score @s MPHealingWait matches ..0 run function skill:update_mp/wait
