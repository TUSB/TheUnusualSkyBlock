playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.beacon.ambient master @a[distance=..16] ~ ~ ~ 1 1.8
playsound minecraft:block.note_block.chime master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.note_block.chime master @a[distance=..16] ~ ~ ~ 1 0.4
playsound minecraft:entity.witch.ambient master @a[distance=..16] ~ ~ ~ 1 1.2

execute rotated ~ 0 run summon minecraft:item ^ ^0.5 ^ {NoGravity:true,Motion:[0d,0.005d,0d],Item:{id:"minecraft:writable_book",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5930,PickupDelay:32767}
execute rotated ~ 0 run particle minecraft:enchant ^ ^1.2 ^ 0 0 0 2 100 force @a[tag=ShowParticles]
execute rotated ~ 0 run particle minecraft:portal ^ ^ ^ 0 0 0 2.5 100 force @a[tag=ShowParticles]

particle end_rod ^ ^ ^ 0 0 -5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.24056 0 -4.58333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.48113 0 -4.16667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.72169 0 -3.75 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.96225 0 -3.33333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.20281 0 -2.91667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.44338 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.68394 0 -2.08333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.9245 0 -1.66667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.16506 0 -1.25 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.40563 0 -0.83333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.64619 0 -0.41667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.88675 0 0 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.12731 0 0.41667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.36788 0 0.83333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.60844 0 1.25 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.849 0 1.66667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 4.08956 0 2.08333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 4.33013 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 4.08956 0 -2.08333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.849 0 -1.66667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.60844 0 -1.25 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.36788 0 -0.83333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.12731 0 -0.41667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.64619 0 0.41667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.40563 0 0.83333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.16506 0 1.25 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.9245 0 1.66667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.68394 0 2.08333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.44338 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.20281 0 2.91667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.96225 0 3.33333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.72169 0 3.75 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.48113 0 4.16667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.24056 0 4.58333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 4.33013 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.849 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.36788 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.88675 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.40563 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.9245 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.96225 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.48113 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.48113 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.96225 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.44338 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.9245 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.40563 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.88675 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.36788 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.849 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0 0 5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.24056 0 4.58333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.48113 0 4.16667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.72169 0 3.75 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.96225 0 3.33333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.20281 0 2.91667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.68394 0 2.08333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.9245 0 1.66667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.16506 0 1.25 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.40563 0 0.83333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.64619 0 0.41667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.88675 0 0 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.12731 0 -0.41667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.36788 0 -0.83333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.60844 0 -1.25 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.849 0 -1.66667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -4.08956 0 -2.08333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -4.33013 0 2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -4.08956 0 2.08333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.849 0 1.66667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.60844 0 1.25 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.36788 0 0.83333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.12731 0 0.41667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.64619 0 -0.41667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.40563 0 -0.83333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.16506 0 -1.25 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.9245 0 -1.66667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.68394 0 -2.08333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.44338 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.20281 0 -2.91667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.96225 0 -3.33333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.72169 0 -3.75 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.48113 0 -4.16667 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.24056 0 -4.58333 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -4.33013 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.849 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -3.36788 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.88675 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -2.40563 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -1.9245 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.96225 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ -0.48113 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.48113 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 0.96225 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 1.9245 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.40563 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 2.88675 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.36788 0 -2.5 0.1 0 force @a[tag=ShowParticles]
particle end_rod ^ ^ ^ 3.849 0 -2.5 0.1 0 force @a[tag=ShowParticles]