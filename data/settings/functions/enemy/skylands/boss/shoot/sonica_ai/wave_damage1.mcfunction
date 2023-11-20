#Function
# 対象となるプレイヤー・Friendlyを特定
    data modify storage mob_data: MobName set value '[{""translate"":""t"",""color"":""#440066"",""obfuscated"":true},{""translate"":""u"",""color"":""#53007D"",""obfuscated"":true},{""translate"":""s"",""color"":""#68009C"",""obfuscated"":true},{""translate"":""b"",""color"":""#8300C4"",""obfuscated"":true},{""translate"":""《音速の堕天使》SonicA"",""color"":""#AA00FF"",""bold"":true,""obfuscated"":false},{""translate"":""b"",""color"":""#8300C4"",""obfuscated"":true},{""translate"":""s"",""color"":""#68009C"",""obfuscated"":true},{""translate"":""u"",""color"":""#53007D"",""obfuscated"":true},{""translate"":""t"",""color"":""#440066"",""obfuscated"":true}]'
    execute as @e[distance=..1.5,predicate=entity:friendly] run tag @s add NowTarget
    execute positioned ~ ~1 ~ as @e[distance=..1.5,predicate=entity:friendly] run tag @s add NowTarget
    execute positioned ~ ~2 ~ as @e[distance=..1.5,predicate=entity:friendly] run tag @s add NowTarget
    execute positioned ~ ~3 ~ as @e[distance=..1.5,predicate=entity:friendly] run tag @s add NowTarget
    execute positioned ~ ~4 ~ as @e[distance=..1.5,predicate=entity:friendly] run tag @s add NowTarget
    execute store result storage mob_data: Call.Damage int 1 run scoreboard players get @s Attack
    execute as @e[distance=..16,predicate=entity:friendly,tag=NowTarget] if entity @s[type=player] run function settings:enemy/skylands/boss/shoot/sonica_ai/wave_damage2
    execute as @e[distance=..16,predicate=entity:friendly,tag=NowTarget] unless entity @s[type=player] run function settings:enemy/skylands/boss/shoot/sonica_ai/wave_damage3
    tag @e[distance=..16,tag=NowTarget] remove NowTarget
# 演出
    particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    particle sonic_boom ~ ~2 ~ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    particle sonic_boom ~ ~3 ~ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    particle sonic_boom ~ ~4 ~ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    particle sonic_boom ~ ~5 ~ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    particle soul_fire_flame ~ ~2.5 ~ 1 5 1 0 150 force @a[distance=..32,tag=ShowParticles]
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 2 0
    playsound block.respawn_anchor.set_spawn hostile @a[distance=..32] ~ ~ ~ 0.5 2 0
    playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.75 0.01
    playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.7 0.01
    playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.65 0.01
