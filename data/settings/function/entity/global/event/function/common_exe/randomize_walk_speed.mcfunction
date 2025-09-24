#Function
#移動速度ランダム化
data modify storage mob_data: AttributesModifier set value {amount:0.0d,operation:"add_multiplied_total",id:"tusb:randomizer"}
execute store result score _ _ run function calc:random
scoreboard players set _ Calc 400
scoreboard players operation _ _ %= _ Calc
scoreboard players remove _ _ 200
execute store result storage mob_data: AttributesModifier.amount double 0.001 run scoreboard players get _ _
data modify entity @s attributes[{id:"minecraft:generic.movement_speed"}].modifiers append from storage mob_data: AttributesModifier
