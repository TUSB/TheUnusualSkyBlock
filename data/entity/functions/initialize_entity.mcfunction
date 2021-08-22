###################################################
# エンティティが生成されたら呼び出され
# エンティティの初期化処理を行う
###################################################

### モブ召喚
execute if entity @s[tag=Spawn] run function entity:enemy/spawn/

### モブステータス適用
execute if entity @s[tag=Mob] run function entity:enemy/spawn/apply_status/

### プレイヤー初期化
execute if entity @s[type=player] run function player:initialized

### 飛翔物属性付与
tag @s[type=#entity:projectiles,tag=!Cargo] add TickingRequired
tag @s[type=#entity:projectiles] add FlyingRequired
data modify entity @s[tag=TickingRequired,nbt={PortalCooldown:0}] PortalCooldown set value 200

### スポナーカート属性
execute if entity @s[type=minecraft:armor_stand,nbt={Passengers:[{id:"minecraft:spawner_minecart"}]}] if block ~ ~1 ~ minecraft:command_block run tag @s add SpawnerHolder
tag @s[tag=SpawnerHolder] add Spawner
execute if entity @s[type=minecraft:spawner_minecart] align xyz if entity @e[dy=0,type=minecraft:armor_stand,nbt={Passengers:[{id:"minecraft:spawner_minecart"}]},limit=1] if block ~ ~1 ~ minecraft:command_block run tag @s add Spawner

### NeverRemain削除
kill @s[type=minecraft:item,nbt={Item:{tag:{NeverRemain:true}}}]
### FallingBlockの消滅処理
execute if entity @s[tag=NeverRemain] run data merge entity @s {FallHurtMax:2147483647,FallingDistance:1E10f,DropItem:false,BlockState:{Name:"minecraft:command_block"},TileEntityData:{Command:"/setblock ~ ~ ~ minecraft:air",auto:true}}

### 初期化済みタグ付与
tag @s add Initialized
