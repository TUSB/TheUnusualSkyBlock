##############################
### 転移の印版
##############################

execute positioned as @p run particle minecraft:portal ~ ~1 ~ 0 0.5 0 1 100 force
execute positioned as @p run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1

execute positioned as @p run spreadplayers ~ ~ 0 1 false @p

execute positioned as @p run particle minecraft:firework ~ ~38 ~ 0.01 80 0.01 0.1 500 force
execute positioned as @p run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1
