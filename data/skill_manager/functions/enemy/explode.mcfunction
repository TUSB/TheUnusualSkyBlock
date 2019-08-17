##############################
### 爆発
##############################

#tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は 最後の力を振り絞り、大爆発した！"}]

### クリーパー召喚　Y=-60で姿が映らないように
summon minecraft:creeper ~ -60 ~ {Tags:[Explosion,Initializing],ExplosionRadius:1b,Fuse:0,Invulnerable:true,CustomName:"{\"text\":\"メガンテ\",\"color\":\"white\",\"italic\":\"false\"}"}
execute positioned ~ -60 ~ run tp @e[tag=Explosion,tag=Initializing,limit=1,distance=..0.1] @s
### Radius代入
execute store result entity @e[tag=Explosion,tag=Initializing,limit=1,distance=..0.1] ExplosionRadius byte 1 run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].Radius 1

tag @e[tag=Explosion,tag=Initializing,limit=1,distance=..0.1] remove Initializing

###---演出---Start
###---演出---End
