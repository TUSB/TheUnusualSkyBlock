##############################
### ライトニングブロー発動
##############################

### 6000 -> 14000 -> 60000 -> 100000
scoreboard players set $BlowPower Global 20000000
scoreboard players operation $BlowPower Global -= @s LightningBlow
execute if score @s ModeSkill matches 51031 run scoreboard players operation $BlowPower Global *= $3 Const
execute if score @s ModeSkill matches 51032 run scoreboard players operation $BlowPower Global *= $7 Const
execute if score @s ModeSkill matches 51033 run scoreboard players operation $BlowPower Global *= $30 Const
execute if score @s ModeSkill matches 51034 run scoreboard players operation $BlowPower Global *= $50 Const
scoreboard players operation $BlowPower Global /= $100 Const
scoreboard players operation @s LightningBlow += $BlowPower Global

###---演出---Start
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:item.trident.thunder master @a[distance=..16] ~ ~ ~ 0.6 2
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.6 30 force
particle minecraft:totem_of_undying ~ ~4 ~ 0 0 0 0.4 30 force
execute rotated ~ 0 positioned ^-0.3 ^1.2 ^0.3 run particle minecraft:dust 0.8 0 1 0.6 ~ ~ ~ 0.15 0.4 0.15 0 50 force
###---演出---End
