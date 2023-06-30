execute store result score _ _ run time query gametime
execute if score @s ShieldUsingTick = _ _ positioned as @s facing entity 0-0-0-0-1 feet positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^-1000 run function skill:enemy/damage/is_blocking
execute unless score @s ShieldUsingTick = _ _ run function score_damage:api/attack