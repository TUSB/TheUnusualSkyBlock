#> makeup:skill/act/knight/shadow_thrust/tick_mob
particle item{item:chain} ~ ~2 ~ 0.2 1.5 0.2 0.01 50 force @a[tag=ShowParticles]
particle minecraft:dust_color_transition{from_color:13107866,scale:1,to_color:261} ~ ~2 ~ 0 1.5 0 0 20 force @a[tag=ShowParticles]
playsound minecraft:block.chain.break player @a ~ ~ ~ 1 0
playsound minecraft:entity.hoglin.attack player @a ~ ~ ~ 0.5 0
