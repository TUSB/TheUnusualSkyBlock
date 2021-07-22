
### 凍結

tag @s add Freeze
data modify storage effects: Freeze.PlayerRotated set from entity @s Rotation

## TODO
## MOBシステムを使った時間管理killに変換すること
execute anchored feet positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["Freeze","Initializing"]}
execute as @e[type=area_effect_cloud,tag=Freeze,tag=Initializing] run function effects:freeze/set_rotation

execute anchored eyes positioned ^ ^-0.2 ^1 run summon slime ~ ~ ~ {DeathLootTable:"minecraft:empty",Size:0,AbsorptionAmount:2.5f,Tags:["Freeze"],Health:0.1f,ActiveEffects:[{Id:20b,Amplifier:1b,Duration:80,ShowParticles:false},{Id:14b,Duration:2147483647,ShowParticles:false}],NoAI:true,NoGravity:true,Invulnerable:true,Silent:true}

function makeup:effects/freeze/apply

schedule function effects:freeze/fix 1t
