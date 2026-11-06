#> makeup:skill/act/hunter/flare_bomb/act0
#
# 照明弾発動

summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:32,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{explosions:[{shape:"small_ball",has_trail:1b,colors:[I;16711680],fade_colors:[I;16753152]},{shape:"small_ball",has_trail:1b,colors:[I;16753152],fade_colors:[I;16711680]}]}}}}
playsound minecraft:entity.firework_rocket.launch player @a[distance=..32] ~ ~ ~ 1 0.55
playsound minecraft:entity.player.hurt_on_fire player @a[distance=..32] ~ ~ ~ 3 0
execute rotated ~ 0 run particle minecraft:flame ^ ^1 ^1 0.1 1 0.1 0.05 10 force
