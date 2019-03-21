##############################
### 爆破Lv2
##############################

advancement revoke @s only enemy_manager:attackevent/blast/2
summon minecraft:creeper ~ ~ ~ {CustomName:"\"ブラストアタック\"",Invulnerable:true,AbsorptionAmount:99f,Silent:true,NoAI:true,ExplosionRadius:2b,Fuse:0s,ignited:true}
