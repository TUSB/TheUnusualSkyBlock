##############################
### データ管理エンティティ生成
##############################

### データ管理ID採番
function data_manager:initializer/define_id

### カーソル移動
function data_manager:move_cursor/data_id

### リンク用エンティティ召喚
execute at 1-0-0-0-0 run summon minecraft:item ~ ~ ~ {Age:-32768s,PickupDelay:32767s,NoGravity:true,Invulnerable:true,CustomName:"\"データ保持エンティティ\"",Tags:[DataHolder,System],Item:{id:"minecraft:stone",Count:1b,tag:{EntityData:{}}}}

### リンク用エンティティ重なり防止
execute at 1-0-0-0-0 store result entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.DataID int 1 run scoreboard players get @s ManagedDataID
