##############################
### 死亡時爆発
##############################

tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は 最後の力を振り絞り、大爆発した！"}]
summon minecraft:creeper ~ ~ ~ {ExplosionRadius:7b,Fuse:0,Invulnerable:true,CustomName:"{\"text\":\"メガンテ\",\"color\":\"white\",\"italic\":\"false\"}"}

###---演出---Start
###---演出---End
