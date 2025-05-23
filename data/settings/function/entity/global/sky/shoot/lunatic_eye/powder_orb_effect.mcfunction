#Function
# ポーション系効果
    effect give @s mining_fatigue 7 3
    effect give @s weakness 7 9
    effect clear @s fire_resistance
    effect clear @s night_vision
# 高確率でデバフ
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..20 run effect give @s invisibility 5 6
# 当然ダメージも
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sを吸って発狂してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    execute store result storage score_damage: Argument.Damage int 1 run data get storage mob_data: Call.Damage
    execute as @s run function skill:enemy/laser/main/damage
# Killする
    data modify storage mob_data: Tags append value "Garbage"
