#CallOnBlock
execute if entity @s[tag=CallOnBlock] run function enemy:ai/call/trigger/block
#ブロックに当たると消える tag=Break
tag @s[tag=Break] add Garbage
#ブロックに当たるとくっつく tag=Stick
scoreboard players set @s[tag=Stick] sm.Speed 0
#ブロックに当たると反射 tag=Bounce
execute if entity @s[tag=Bounce] run function smart_motion:core/bounce
