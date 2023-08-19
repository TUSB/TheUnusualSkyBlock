#Function
#移動速度ランダム化
data modify storage mob_data: AttributesModifier set value {Amount:0.0d,Operation:2,UUID:[I;0,0,131072,0],Name:"tusb:randomizer"}
execute store result score _ _ run function calc:random
scoreboard players set _ Calc 400
scoreboard players operation _ _ %= _ Calc
scoreboard players remove _ _ 200
execute store result storage mob_data: AttributesModifier.Amount double 0.001 run scoreboard players get _ _
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers append from storage mob_data: AttributesModifier
