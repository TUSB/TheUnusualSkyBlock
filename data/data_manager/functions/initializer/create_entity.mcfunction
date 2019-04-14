##############################
### データ管理エンティティ生成
##############################

### リンク用エンティティ召喚
execute at 1-0-0-0-0 run summon minecraft:item ~ ~ ~ {Age:-32768s,PickupDelay:32767s,NoGravity:true,Invulnerable:true,CustomName:"\"データ保持エンティティ\"",Tags:[DataHolder,System],Item:{id:"minecraft:stone",Count:1b,tag:{EntityData:{}}}}
