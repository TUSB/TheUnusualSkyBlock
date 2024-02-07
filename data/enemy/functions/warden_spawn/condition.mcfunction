#> enemy:warden_spawn/condition
#
# 条件分岐
#
# @within function enemy:natural_spawn_type

# NBT付与
    data merge entity @s {Silent:1b,DeathTime:19,DeathLootTable:"minecraft:empty",Health:0.01f,Attributes:[{Name:"generic.max_health",Base:0.01d}]}

# プレイヤーが64m以内にいるかを判定
    execute unless data storage main: difficult{world:"debug"} if entity @a[predicate=entity:player,distance=..64] run function enemy:warden_spawn/spawn

# Spawnタグが付いてなかった場合はKillする
    kill @s[tag=!Spawn]