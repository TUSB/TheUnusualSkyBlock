###################################################
# エンティティが生成されたら呼び出され
# エンティティの初期化処理を行う
###################################################

### 自然沸き処理
execute if entity @s[type=creeper,tag=] run function enemy:natural_spawn

### モブ召喚
execute if entity @s[tag=Spawn] run function enemy:spawn/

### モブステータス適用
execute unless entity @s[tag=DelayedData] run data remove entity @s TicksFrozen
execute if entity @s[tag=DelayedData] run function enemy:spawn/apply_status/

### CallOnInit
execute if entity @s[tag=CallOnInit] run function enemy:ai/call/trigger/initial

### プレイヤー初期化
execute if entity @s[type=player] run function player:initialized

### 飛翔物属性付与
execute unless entity @s[type=!#entity:projectiles,tag=!DamageProjectile] run function entity:initialize_projectile

### スポナーカート属性
execute if entity @s[type=minecraft:armor_stand,nbt={Passengers:[{id:"minecraft:spawner_minecart"}]}] if block ~ ~1 ~ minecraft:command_block run tag @s add SpawnerHolder
tag @s[tag=SpawnerHolder] add Spawner
execute if entity @s[type=minecraft:spawner_minecart] align xyz if entity @e[dy=0,type=minecraft:armor_stand,nbt={Passengers:[{id:"minecraft:spawner_minecart"}]},limit=1] if block ~ ~1 ~ minecraft:command_block run tag @s add Spawner

### NeverRemain削除
kill @s[type=minecraft:item,nbt={Item:{tag:{NeverRemain:true}}}]

#クリーパー爆発のAEC削除
kill @s[type=area_effect_cloud,nbt={Radius:2.5f,RadiusOnUse:-0.5f,RadiusPerTick:-0.008333334f}]

### 初期化済みタグ付与
tag @s add Initialized
