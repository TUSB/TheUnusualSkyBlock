##############################
### 爆破Lv3
##############################

advancement revoke @s only enemy_manager:attackevent/blast/3
summon minecraft:creeper ~ ~ ~ {CustomName:"\"ブラストアタック\"",Invulnerable:true,AbsorptionAmount:99f,Silent:true,NoAI:true,ExplosionRadius:3b,Fuse:0s,ignited:true}
