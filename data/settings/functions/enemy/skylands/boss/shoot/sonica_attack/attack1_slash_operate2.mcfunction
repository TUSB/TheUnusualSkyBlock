#Function
# 判定
    function settings:enemy/skylands/boss/shoot/sonica_attack/attack1_slash2

# 対象に防具貫通でダメージを与える
    data remove storage score_damage: Argument
    data modify storage mob_data: MobName set value '[{""translate"":""t"",""color"":""#440066"",""obfuscated"":true},{""translate"":""u"",""color"":""#53007D"",""obfuscated"":true},{""translate"":""s"",""color"":""#68009C"",""obfuscated"":true},{""translate"":""b"",""color"":""#8300C4"",""obfuscated"":true},{""translate"":""《音速の堕天使》SonicA"",""color"":""#AA00FF"",""bold"":true,""obfuscated"":false},{""translate"":""b"",""color"":""#8300C4"",""obfuscated"":true},{""translate"":""s"",""color"":""#68009C"",""obfuscated"":true},{""translate"":""u"",""color"":""#53007D"",""obfuscated"":true},{""translate"":""t"",""color"":""#440066"",""obfuscated"":true}]'
    data modify storage score_damage: Argument set value {BypassResistance:1b,DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sの放った斬撃に切り裂かれてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    execute store result storage score_damage: Argument.Damage int 1.2 run scoreboard players get @s Attack
    execute as @a[distance=..5,tag=NowTarget] run function score_damage:api/attack
    execute as @a[distance=..5,tag=NowTarget] run function makeup:enemy/projectile_hit
    scoreboard players set @a[distance=..5,tag=NowTarget] ProjectileTime -10
# 対象にペイルを付与
    effect give @a[distance=..5,tag=NowTarget] invisibility 5 10
    effect give @a[distance=..5,tag=NowTarget] slowness 30 2

# タグ外し
    tag @a[distance=..5,tag=NowTarget] remove NowTarget
