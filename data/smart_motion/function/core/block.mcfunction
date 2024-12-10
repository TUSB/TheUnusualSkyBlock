#ブロックに当たると消える tag=Break
tag @s[tag=Break] add Garbage
#ブロックに当たるとくっつく tag=Stick
scoreboard players set @s[tag=Stick] sm.Speed 0
#ブロックに当たると反射 tag=Bounce
execute if entity @s[tag=Bounce] run function smart_motion:core/bounce
#CallOnBlock
execute if entity @s[tag=CallOnBlock] at @s run function enemy:ai/call/trigger/block
#重力をリセット
execute unless entity @s[scores={sm.Y=-1..1}] run scoreboard players set @s sm.GravitySum 0
