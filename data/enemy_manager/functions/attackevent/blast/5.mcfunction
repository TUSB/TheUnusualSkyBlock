##############################
### 爆破Lv5
##############################

advancement revoke @s only enemy_manager:attackevent/blast/5
summon minecraft:creeper ~ ~ ~ {CustomName:"\"ブラストアタック\"",Invulnerable:true,AbsorptionAmount:99f,Silent:true,NoAI:true,ExplosionRadius:5b,Fuse:0s,ignited:true}
