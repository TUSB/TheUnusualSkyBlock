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

### スポナーカート属性
execute if entity @s[type=minecraft:armor_stand,nbt={Passengers:[{id:"minecraft:spawner_minecart"}]}] if block ~ ~1 ~ minecraft:command_block run tag @s add SpawnerHolder
tag @s[tag=SpawnerHolder] add Spawner
execute if entity @s[type=minecraft:spawner_minecart] align xyz if entity @e[dy=0,type=minecraft:armor_stand,nbt={Passengers:[{id:"minecraft:spawner_minecart"}]},limit=1] if block ~ ~1 ~ minecraft:command_block run tag @s add Spawner

### NeverRemain削除
kill @s[type=minecraft:item,nbt={Item:{tag:{NeverRemain:true}}}]

### 初期化済みタグ付与
tag @s add Initialized
