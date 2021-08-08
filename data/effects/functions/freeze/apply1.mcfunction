
### 凍結

scoreboard players set @s FreezeTimer 60
data modify storage effects: Freeze.PlayerRotated set from entity @s Rotation

summon marker ^ ^ ^ {Tags:["Freeze","Initializing"]}
execute as @e[type=marker,tag=Freeze,tag=Initializing] run function effects:freeze/set_rotation

execute anchored eyes run summon slime ^ ^-0.2 ^1 {DeathLootTable:"minecraft:empty",Size:0,AbsorptionAmount:2.5f,Tags:["Freeze"],Health:0.1f,ActiveEffects:[{Id:20b,Amplifier:1b,Duration:80,ShowParticles:false},{Id:14b,Duration:2147483647,ShowParticles:false}],NoAI:true,NoGravity:true,Invulnerable:true,Silent:true}

schedule function effects:freeze/fix 1t

function makeup:effects/freeze/apply
