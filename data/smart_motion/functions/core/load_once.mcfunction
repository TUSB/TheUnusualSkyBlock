say SmartMotion の導入に成功しました

scoreboard objectives add sm.Calc dummy
scoreboard objectives add sm.X dummy
scoreboard objectives add sm.Y dummy
scoreboard objectives add sm.Z dummy
scoreboard objectives add sm.Speed dummy
scoreboard objectives add sm.Gravity dummy
scoreboard objectives add sm.GravitySum dummy

scoreboard players set #-1 sm.Calc -1
scoreboard players set #100 sm.Calc 100

execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run summon marker 0.0 0.0 0.0 {UUID:[I;0,6419,0,0]}
