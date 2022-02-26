#X軸反射
execute unless entity @s[scores={sm.X=-1..1}] store result entity @s Rotation[0] float 0.01 run data get entity @s Rotation[0] -100
#Y軸反射 重力をリセット
execute unless entity @s[scores={sm.Y=-1..1}] store result entity @s Rotation[1] float 0.01 run data get entity @s Rotation[1] -100
execute unless entity @s[scores={sm.Y=-1..1}] run scoreboard players set @s sm.GravitySum 0
#Z軸反射
execute unless entity @s[scores={sm.Z=-1..1}] store result score # sm.Calc run data get entity @s Rotation[0] -100
execute unless entity @s[scores={sm.Z=-1..1}] if score # sm.Calc matches 0.. store success score @s sm.Z store result entity @s Rotation[0] float 0.01 run scoreboard players remove # sm.Calc 18000
execute unless entity @s[scores={sm.Z=-1..1}] if score # sm.Calc matches ..-1 store success score @s sm.Z store result entity @s Rotation[0] float 0.01 run scoreboard players add # sm.Calc 18000
