##############################
### ゾンビウォーリア爆破召喚 - Event  
##############################

execute if entity @a[distance=..8,gamemode=!creative,gamemode=!spectator] facing entity @a[distance=..8,gamemode=!creative,gamemode=!spectator,sort=nearest] eyes run summon minecraft:creeper ^ ^ ^3 {CustomName:"\"ゾンビウォーリア\"",Invulnerable:true,AbsorptionAmount:99f,Silent:true,NoAI:true,ExplosionRadius:7b,Fuse:0s,ignited:true}
