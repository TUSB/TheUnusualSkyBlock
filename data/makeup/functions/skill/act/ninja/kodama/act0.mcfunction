particle minecraft:portal ~ ~ ~ 0 0 0 1 500 force
particle minecraft:enchant ~ ~1 ~ 0 0 0 3 500 force
execute if score _ Level matches 1 positioned as @e[distance=..20,type=item,nbt={Invulnerable:false}] run particle minecraft:portal ~ ~ ~ 0 0 0 0.2 50 force
execute if score _ Level matches 2 positioned as @e[distance=..30,type=item,nbt={Invulnerable:false}] run particle minecraft:portal ~ ~ ~ 0 0 0 0.2 50 force
playsound minecraft:entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 1 0.5
playsound minecraft:entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select master @a[distance=..32] ~ ~ ~ 1 2
