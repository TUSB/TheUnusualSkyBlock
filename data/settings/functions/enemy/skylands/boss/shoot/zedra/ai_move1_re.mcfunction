#Function
## ギリギリまで移動
tp @s ^ ^ ^0.1
particle dust 0.6 0.000 0.000 0.75 ^ ^0.25 ^-1 0 0 0 1 0 force @a[distance=..64,tag=ShowParticles]
scoreboard players remove # Calc 1
execute unless score # Calc matches 0 at @s run function settings:enemy/skylands/boss/shoot/zedra/ai_move1_re
