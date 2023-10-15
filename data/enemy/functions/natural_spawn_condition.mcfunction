#> enemy:natural_spawn_condition
#
# 自然湧き条件を満たしているかどうか、判定する
#
# @within function entity:initialize_entity

# Vexに透明とNoAIを付与
    data merge entity @s {Silent:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Health:0.01f,LifeTicks:200,HandItems:[{},{}],Attributes:[{Name:"generic.max_health",Base:0.01d}]}
    effect give @s invisibility infinite 127 true

# プレイヤーが64m以内にいるかを判定
    execute unless data storage main: difficult{world:"debug"} if entity @a[predicate=entity:player,distance=..64] run function enemy:natural_spawn

# Spawnタグが付いてなかった場合は地面に埋めてやる
    tp @s[tag=!Spawn] ~ ~-1 ~

# 念のため自然湧き用タグを付与する
    tag @s add NaturalSpawn