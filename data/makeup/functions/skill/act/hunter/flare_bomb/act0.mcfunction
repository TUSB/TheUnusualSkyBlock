summon minecraft:firework_rocket ~ ~ ~ {LifeTime:32,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;16711680],FadeColors:[I;16753152]},{Type:1b,Flicker:1b,Colors:[I;16753152],FadeColors:[I;16711680]}]}}}}
playsound minecraft:entity.firework_rocket.launch master @a[distance=..32] ~ ~ ~ 1 0.55
playsound minecraft:entity.player.hurt_on_fire master @a[distance=..32] ~ ~ ~ 3 0
execute rotated ~ 0 run particle minecraft:flame ^ ^1 ^1 0.1 1 0.1 0.05 10 force @a[tag=ShowParticles]