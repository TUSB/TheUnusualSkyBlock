
### MP更新

### MPアクセラ
execute unless score @s MPAcceleration matches 900.. run scoreboard players add @s MPAcceleration 1

### 50-100 2000で1回復
scoreboard players operation _ _ = @s Level
scoreboard players set _ Calc 50
scoreboard players operation _ _ < _ Calc
scoreboard players add _ _ 50
execute if score @s MPAcceleration matches 1.. run scoreboard players operation _ _ += @s MPAcceleration

### 適用
scoreboard players operation @s MPHealingWait -= _ _

### 0でMP1回復
execute if score @s MPHealingWait matches ..0 run function skill:update_mp/wait
