#Function
#ダメージ判定
data remove storage score_damage: Argument
data modify storage score_damage: Argument set value {DamageType:[Global]}
execute store result storage score_damage: Argument.Damage double 1 run scoreboard players get @s SpecialAttack
data modify storage mob_data: MobName set from entity @s CustomName
execute positioned ~-0.5 ~1.375 ~-0.5 as @a[predicate=entity:player,scores={ProjectileTime=0..},dy=1] run function settings:enemy/skylands/ground/blow/silver_sorcerer/spike_damage2
