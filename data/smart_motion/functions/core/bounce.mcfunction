#X軸反射
execute unless entity @s[scores={sm.X=-1..1}] store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s sm.RotationX *= #-1 sm.Calc
#Y軸反射 重力をリセット
execute unless entity @s[scores={sm.Y=-1..1}] store result entity @s Rotation[1] float 0.01 run scoreboard players operation @s sm.RotationY *= #-1 sm.Calc
execute unless entity @s[scores={sm.Y=-1..1}] run scoreboard players set @s sm.GravitySum 0
#Z軸反射
execute unless entity @s[scores={sm.Z=-1..1}] run scoreboard players operation @s sm.RotationX *= #-1 sm.Calc
execute unless entity @s[scores={sm.Z=-1..1}] if score @s sm.RotationX matches 0.. store success score @s sm.Z run scoreboard players remove @s sm.RotationX 18000
execute unless entity @s[scores={sm.Z=-1..1}] if score @s sm.RotationX matches ..-1 store success score @s sm.Z run scoreboard players add @s sm.RotationX 18000
