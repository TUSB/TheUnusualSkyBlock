##############################
### 管理データ複製
##############################

### コピー用エンティティ生成
execute at 1-0-0-0-1 run summon minecraft:item ~ ~ ~ {Age:-32768s,PickupDelay:32767s,NoGravity:true,Invulnerable:true,CustomName:"\"データコピーエンティティ\"",Tags:[DataHolder,System,Copy],Item:{id:"minecraft:stone",Count:1b,tag:{EntityData:{}}}}

### データコピー
execute at 1-0-0-0-1 run data modify entity @e[distance=0,tag=DataHolder,tag=Copy,limit=1] Item.tag.EntityData set from entity @e[distance=0,tag=DataHolder,tag=!Copy,limit=1] Item.tag.EntityData
execute at 1-0-0-0-1 run data modify entity @e[distance=0,tag=DataHolder,tag=Copy,limit=1] Item.tag.EyePosition set from entity @e[distance=0,tag=DataHolder,tag=!Copy,limit=1] Item.tag.EyePosition
### 寿命を設定(1秒)
execute at 1-0-0-0-1 run scoreboard players set @e[distance=0,tag=DataHolder,tag=Copy,limit=1] GlobalCSTimer -100

### リンク用エンティティ重なり防止
execute at 1-0-0-0-1 store result entity @e[distance=0,tag=DataHolder,tag=Copy,limit=1] Item.tag.DataID int 1 run scoreboard players add $_ ManagedDataID 1

### コピーエンティティ移動
execute at 1-0-0-0-1 store result entity @e[distance=0,tag=DataHolder,tag=Copy,limit=1] Pos[1] double 0.01 run scoreboard players operation $Result ManagedDataID = $_ ManagedDataID
