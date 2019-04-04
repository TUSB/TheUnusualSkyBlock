##############################
### エクリプスフレイム本処理
##############################

# [Obsoleted]
# ###変数加算
# scoreboard players add @s EclipseRadius 30

# ###パーティクル生産
# function calc_manager:get/pos1
# scoreboard players operation $Y1 Global -= @s EclipseRadius
# function calc_manager:set/pos1
# execute at @s if entity @s[y_rotation=0] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,NativeTask]}
# execute at @s if entity @s[y_rotation=60] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,NativeTask]}
# execute at @s if entity @s[y_rotation=120] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,NativeTask]}
# execute at @s if entity @s[y_rotation=180] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,NativeTask]}
# execute at @s if entity @s[y_rotation=240] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,NativeTask]}
# execute at @s if entity @s[y_rotation=30] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,NativeTask]}
# tp @s ~ ~ ~ ~20 ~

# ###---演出---Start
# execute if score $Second Count matches 1 as @a[distance=..32] facing entity @s feet facing ^ ^ ^-1 positioned as @s run playsound minecraft:entity.blaze.ambient master @s ^ ^ ^24 1.6 0.5
# ###---演出---End

# ###魔法持続時間終了処理
# execute if score @s EclipseRadius matches 15000.. run kill @s

# ###球内適当判定
# scoreboard players operation $Damage Global = @s SkillAttribute
# execute as @e[distance=..10,tag=Mob] at @s run function skill_manager:black_mage/eclipse_flame/deal_damage

### 変数加算
scoreboard players add @s EclipseRadius 10

### 座標変更
execute store result score $Y1 Global run data get entity @s Pos[1] 1000
scoreboard players operation $Y1 Global += @s EclipseRadius
execute store result entity @s Pos[1] double 0.001 run scoreboard players get $Y1 Global

### ダメージ処理
scoreboard players set $SqrRadius Global 1000
scoreboard players operation $SqrRadius Global += @s EclipseRadius
scoreboard players operation $SqrRadius Global *= $SqrRadius Global
scoreboard players operation $Damage Global = @s SkillAttribute
execute at @s as @e[distance=..10,tag=Mob] run function skill_manager:black_mage/eclipse_flame/deal_damage

### 座標変更
scoreboard players operation $Y1 Global += @s EclipseRadius
execute store result entity @s Pos[1] double 0.001 run scoreboard players get $Y1 Global

###---演出---Start
execute if score $Second Count matches 1 as @a[distance=..32] facing entity @s feet facing ^ ^ ^-1 positioned as @s run playsound minecraft:entity.blaze.ambient master @s ^ ^ ^24 1.6 0.5
execute rotated as @s rotated ~000 ~-00 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~72 ~-00 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~144 ~-00 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~216 ~-00 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~288 ~-00 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~000 ~-22 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~72 ~-22 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~144 ~-22 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~216 ~-22 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~288 ~-22 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~000 ~-44 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~72 ~-44 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~144 ~-44 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~216 ~-44 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~288 ~-44 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~000 ~-66 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~72 ~-66 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~144 ~-66 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~216 ~-66 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute rotated as @s rotated ~288 ~-66 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
###---演出---End

tp @s ~ ~-0.01 ~ ~10 ~-1
execute at @s[x_rotation=-90..68] run tp @s ~ ~ ~ ~ 89

execute if score @s EclipseRadius matches 6500.. run kill @s
