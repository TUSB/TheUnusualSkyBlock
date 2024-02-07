#Function
particle witch ~ ~1 ~ 0.5 0.5 0.5 0.75 30 force @a[distance=..64,tag=ShowParticles]
playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 1 2
tellraw @a[predicate=entity:player,distance=..5] {"translate":"%1$sに魔力を吸い取られた！","color":"white","bold":true,"with":[{"selector":"@s","color":"white"}]}
