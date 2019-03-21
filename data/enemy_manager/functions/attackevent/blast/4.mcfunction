##############################
### 爆破Lv4
##############################

advancement revoke @s only enemy_manager:attackevent/blast/4
summon minecraft:creeper ~ ~ ~ {CustomName:"\"ブラストアタック\"",Invulnerable:true,AbsorptionAmount:99f,Silent:true,NoAI:true,ExplosionRadius:4b,Fuse:0s,ignited:true}
