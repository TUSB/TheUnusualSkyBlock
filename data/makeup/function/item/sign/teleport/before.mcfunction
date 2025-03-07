#> makeup:item/sign/teleport/before
##############################
### 転移の印版
##############################
execute positioned as @a[sort=nearest,limit=1] run particle minecraft:portal ~ ~1 ~ 0 0.5 0 1 100 force
execute positioned as @a[sort=nearest,limit=1] run playsound minecraft:entity.enderman.teleport block @a[distance=..16] ~ ~ ~ 1 1
