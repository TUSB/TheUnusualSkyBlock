tag @s add InitDamageSnowball
tag @s add NativeTask
execute store success entity @s NoGravity byte 1 unless data entity @s NoGravity
schedule function entity:initialize_snowball/schedule/ 1t append
schedule function entity:initialize_snowball/schedule/ 2t append
