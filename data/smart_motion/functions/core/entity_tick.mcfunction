#現tickの座標取得
execute store result score # sm.X run data get entity @s Pos[0] 100
execute store result score # sm.Y run data get entity @s Pos[1] 100
execute store result score # sm.Z run data get entity @s Pos[2] 100
#前Tickと現Tickの座標の差を算出 ブロックに当たっていればずれる
scoreboard players operation @s sm.X -= # sm.X
scoreboard players operation @s sm.Y -= # sm.Y
scoreboard players operation @s sm.Z -= # sm.Z

#ブロック判定キャンセル
execute unless entity @s[scores={sm.X=-1..1}] run function smart_motion:core/cancel_x/
execute unless entity @s[scores={sm.Z=-1..1}] run function smart_motion:core/cancel_z/
#天井にヒットボックスの上端が当たった場合は必ずブロック判定キャンセル
execute unless entity @s[scores={sm.Y=..1}] store success score @s sm.Y run tp @s ~ ~0.01 ~
#天井をすり抜けないように上限補正
scoreboard players set #YMotion sm.Calc 100000
execute if entity @s[scores={sm.RotationY=-9000..0}] if predicate smart_motion:limit_y_motion run function smart_motion:core/limit_y_motion/
#ブロック判定
execute unless entity @s[scores={sm.X=-1..1,sm.Y=-1..1,sm.Z=-1..1}] run function smart_motion:core/block

#単位ベクトル取得、スピード補正、Motionに適用
execute store result entity 0-0-1913-0-0 Rotation[0] float 0.01 run scoreboard players get @s sm.RotationX
execute store result entity 0-0-1913-0-0 Rotation[1] float 0.01 run scoreboard players get @s sm.RotationY
execute in area:control_area positioned 0.0 0.0 0.0 as 0-0-1913-0-0 rotated as @s run tp @s ^ ^ ^1
execute store result score @s sm.X run data get entity 0-0-1913-0-0 Pos[0] 100
execute store result score @s sm.Y run data get entity 0-0-1913-0-0 Pos[1] 100
execute store result score @s sm.Z run data get entity 0-0-1913-0-0 Pos[2] 100
#X
execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s sm.X *= @s sm.Speed
scoreboard players operation @s sm.X /= #100 sm.Calc
#Y 重力補正、天井をすり抜けないように上限補正
scoreboard players operation @s sm.Y *= @s sm.Speed
scoreboard players operation @s sm.GravitySum += @s sm.Gravity
scoreboard players operation @s sm.Y -= @s sm.GravitySum
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s sm.Y < #YMotion sm.Calc
scoreboard players operation @s sm.Y /= #100 sm.Calc
#Z
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s sm.Z *= @s sm.Speed
scoreboard players operation @s sm.Z /= #100 sm.Calc

#次tickの予測座標を計算
scoreboard players operation @s sm.X += # sm.X
scoreboard players operation @s sm.Y += # sm.Y
scoreboard players operation @s sm.Z += # sm.Z
