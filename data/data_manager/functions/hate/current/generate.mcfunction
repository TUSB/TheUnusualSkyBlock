##############################
### ヘイト付与
##############################

### ヘイト用エンティティ生成
summon minecraft:snowball ~ ~ ~ {Tags:[System,Hate],Motion:[0d,10d,0d]}

### オーナー設定コピー
execute at 1-0-0-0-0 run data modify entity @e[tag=Hate,tag=!Initialized,limit=1] owner.M set from entity @e[distance=0,tag=DataHolder,tag=!Copy,limit=1] Item.tag.EntityData.UUIDMost
execute at 1-0-0-0-0 run data modify entity @e[tag=Hate,tag=!Initialized,limit=1] owner.L set from entity @e[distance=0,tag=DataHolder,tag=!Copy,limit=1] Item.tag.EntityData.UUIDLeast

### 当たるように移動
tp @s ~ ~0.35 ~
