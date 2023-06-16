#Function
data remove storage score_damage: Argument
data modify storage score_damage: Argument set value {DamageType:[Global]}
execute store result storage score_damage: Argument.Damage double 1.2 run scoreboard players get @s SpecialAttack
data modify storage mob_data: MobName set from entity @s CustomName
execute as @a[distance=..6,predicate=entity:player] run function settings:enemy/skylands/sky/shoot/impure_skull/doom_damage2
execute positioned ~ ~-1 ~ as @a[distance=..6,tag=!NowTarget,predicate=entity:player] run function settings:enemy/skylands/sky/shoot/impure_skull/doom_damage2
execute positioned ~ ~-2 ~ as @a[distance=..6,tag=!NowTarget,predicate=entity:player] run function settings:enemy/skylands/sky/shoot/impure_skull/doom_damage2
tag @a[distance=..16] remove NowTarget
