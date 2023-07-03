
### 凍結

scoreboard players set @s FreezeTimer 60
data modify storage effects: Freeze.PlayerRotated set from entity @s Rotation

summon marker ^ ^ ^ {Tags:["Freeze","Initializing"]}
execute as @e[type=marker,tag=Freeze,tag=Initializing] run function effects:freeze/set_rotation

execute positioned ~ ~500 ~ anchored eyes run summon slime ^ ^-0.2 ^1 {DeathLootTable:"minecraft:empty",Size:0,AbsorptionAmount:2.5f,Tags:["Freeze"],Health:0.1f,ActiveEffects:[{Id:20,Amplifier:1b,Duration:80,ShowParticles:false},{Id:14,Duration:-1,ShowParticles:false}],NoAI:true,NoGravity:true,Invulnerable:true,Silent:true}
execute positioned ~ ~500 ~ anchored eyes positioned ^ ^-0.2 ^1 anchored feet as @e[tag=Freeze,distance=0,limit=1] run tp @s ~ ~-500 ~

schedule function effects:freeze/fix 1t

function makeup:effects/freeze/apply

# 氷ディスプレイ召喚
summon minecraft:item_display ~ ~1 ~ {Tags:["Freeze"],item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:4003,Explosion:{Colors:[I;9225471]}}},transformation:{left_rotation:{axis:[1.1f,0.8f,-0.2f],angle:1.371f},right_rotation:[0f,0f,0f,1f],scale:[0.65f,0.6f,1.3f],translation:[0f,0f,0f]},Billboard:"fixed"}
summon minecraft:item_display ~ ~1 ~ {Tags:["Freeze"],item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:4003,Explosion:{Colors:[I;9225471]}}},transformation:{left_rotation:{axis:[0.4f,0.8f,1f],angle:0.571f},right_rotation:[0f,0f,0f,1f],scale:[0.8f,1.47f,0.6f],translation:[0f,0f,0f]},Billboard:"fixed"}
summon minecraft:item_display ~ ~1 ~ {Tags:["Freeze"],item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:4003,Explosion:{Colors:[I;9225471]}}},transformation:{left_rotation:{axis:[0.4f,0.8f,1f],angle:-0.571f},right_rotation:[0f,0f,0f,1f],scale:[1.6f,0.55f,0.92f],translation:[0f,0f,0f]},Billboard:"fixed"}
