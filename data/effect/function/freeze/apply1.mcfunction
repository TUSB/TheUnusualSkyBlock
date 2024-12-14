#> effect:freeze/apply1
### 凍結

scoreboard players set @s FreezeTimer 60
tag @s add Unmoved
data modify storage effects: Freeze.PlayerRotated set from entity @s Rotation

summon marker ^ ^ ^ {Tags:["Freeze","Initializing"]}
execute as @e[type=marker,tag=Freeze,tag=Initializing] run function effect:freeze/set_rotation

execute positioned ~ ~500 ~ anchored eyes run summon slime ^ ^-0.2 ^1 {DeathLootTable:"minecraft:empty",Size:0,AbsorptionAmount:2.5f,Tags:["Freeze"],Health:0.1f,active_effects:[{id:"minecraft:wither",amplifier:1b,duration:80,show_particles:false},{id:"minecraft:invisibility",duration:-1,show_particles:false}],NoAI:true,NoGravity:true,Invulnerable:true,Silent:true}
execute positioned ~ ~500 ~ anchored eyes positioned ^ ^-0.2 ^1 anchored feet as @e[tag=Freeze,distance=0,limit=1] run tp @s ~ ~-500 ~

schedule function effect:freeze/fix 1t

function makeup:effect/freeze/apply

# 氷ディスプレイ召喚
summon minecraft:item_display ~ ~1 ~ {Tags:["Freeze"],item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:4003,Explosion:{Colors:[I;9225471]}}},transformation:{left_rotation:{axis:[1.1f,0.8f,-0.2f],angle:1.371f},right_rotation:[0f,0f,0f,1f],scale:[0.95f,0.9f,1.6f],translation:[0f,0f,0f]},Billboard:"fixed"}
summon minecraft:item_display ~ ~1 ~ {Tags:["Freeze"],item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:4003,Explosion:{Colors:[I;9225471]}}},transformation:{left_rotation:{axis:[0.4f,0.8f,1f],angle:0.571f},right_rotation:[0f,0f,0f,1f],scale:[1.1f,1.77f,0.9f],translation:[0f,0f,0f]},Billboard:"fixed"}
summon minecraft:item_display ~ ~1 ~ {Tags:["Freeze"],item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:4003,Explosion:{Colors:[I;9225471]}}},transformation:{left_rotation:{axis:[0.4f,0.8f,1f],angle:-0.571f},right_rotation:[0f,0f,0f,1f],scale:[1.9f,0.85f,1.22f],translation:[0f,0f,0f]},Billboard:"fixed"}
