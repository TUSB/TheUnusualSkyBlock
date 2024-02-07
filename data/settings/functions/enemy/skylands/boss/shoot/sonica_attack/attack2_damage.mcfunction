#Function
# Markerをランダムな方向に向かせる
    execute positioned ~ ~1 ~ run function calc:geometry/tp_00000
    execute as 0-0-0-0-0 run function calc:set/random_rotation
# 演出
    execute at 0-0-0-0-0 run function settings:enemy/skylands/boss/shoot/sonica_attack/attack2_direction
# Markerを返す
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# 対象に防具貫通でダメージを与える
    data remove storage score_damage: Argument
    data modify storage mob_data: MobName set value '[{""translate"":""t"",""color"":""#440066"",""obfuscated"":true},{""translate"":""u"",""color"":""#53007D"",""obfuscated"":true},{""translate"":""s"",""color"":""#68009C"",""obfuscated"":true},{""translate"":""b"",""color"":""#8300C4"",""obfuscated"":true},{""translate"":""《音速の堕天使》SonicA"",""color"":""#AA00FF"",""bold"":true,""obfuscated"":false},{""translate"":""b"",""color"":""#8300C4"",""obfuscated"":true},{""translate"":""s"",""color"":""#68009C"",""obfuscated"":true},{""translate"":""u"",""color"":""#53007D"",""obfuscated"":true},{""translate"":""t"",""color"":""#440066"",""obfuscated"":true}]'
    data modify storage score_damage: Argument set value {BypassResistance:1b,DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sの放った斬撃に切り裂かれてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.6 run scoreboard players get @s Attack
    execute as @a[predicate=entity:player,distance=..6] run function score_damage:api/attack
    execute as @a[predicate=entity:player,distance=..6] run function makeup:enemy/projectile_hit
    scoreboard players set @a[predicate=entity:player,distance=..6] ProjectileTime -10
# 対象にペイルを付与
    effect give @a[predicate=entity:player,distance=..6] invisibility 5 10
    effect give @a[predicate=entity:player,distance=..6] slowness 30 3
