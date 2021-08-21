execute if entity @e[distance=..8,tag=Mob] run playsound minecraft:block.wood.break master @a ~ ~ ~ 5 1.2
summon minecraft:firework_rocket ^ ^ ^ {Silent:true,Life:1,LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;16711680,65280,255],FadeColors:[I;11141120,43520,170]}],Flight:1b}}}}
playsound minecraft:entity.firework_rocket.blast master @a[distance=..48] ~ ~ ~ 4 1
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..48] ~ ~ ~ 4 0.8
