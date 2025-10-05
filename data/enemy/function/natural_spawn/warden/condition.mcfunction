#> enemy:natural_spawn/warden/condition
#
# 条件分岐
#
# @within function enemy:natural_spawn/fork

# NBT付与
    data merge entity @s {Silent:1b,DeathTime:19,DeathLootTable:"",Health:0.01f,attributes:[{id:"max_health",base:0.01d}]}

# プレイヤーが64m以内にいるかを判定
    execute unless data storage main: difficult{world:"debug"} if entity @a[predicate=entity:player,distance=..64] run function enemy:natural_spawn/warden/spawn

# Spawnタグが付いてなかった場合はKillする
    kill @s[tag=!Spawn]
