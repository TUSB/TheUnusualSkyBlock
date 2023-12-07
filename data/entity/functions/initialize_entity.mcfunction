###################################################
# エンティティが生成されたら呼び出され
# エンティティの初期化処理を行う
###################################################

### 自然湧き処理
execute if entity @s[type=#entity:natural_spawn,tag=] run function enemy:natural_spawn_type

### モブ召喚
execute if entity @s[tag=Spawn] run function enemy:spawn/

### モブステータス適用
execute unless entity @s[tag=DelayedData] run data remove entity @s TicksFrozen
execute if entity @s[tag=DelayedData] run function enemy:spawn/apply_status/

### プレイヤー初期化
execute if entity @s[type=player] run function player:initialized

### 飛翔物属性付与
execute unless entity @s[type=!#entity:projectiles,tag=!DamageProjectile] run function entity:initialize_projectile

### Item to Spawn
execute if data entity @s[type=item] Item.tag.SpawnEntities run function enemy:spawn/item_to_spawn

### NeverRemain削除
kill @s[type=minecraft:item,nbt={Item:{tag:{NeverRemain:true}}}]

#TNTを即時起爆
data modify entity @s[type=tnt] Fuse set value 0s

#クリーパー爆発のAEC削除
kill @s[type=area_effect_cloud,nbt={Radius:2.5f,RadiusOnUse:-0.5f,RadiusPerTick:-0.008333334f}]

#ゾンビ増援制御
attribute @s[type=zombie] zombie.spawn_reinforcements base set 0.0
data remove entity @s[type=zombie] Attributes[{Name:"minecraft:zombie.spawn_reinforcements"}].Modifiers

#自然湧きシュルカー・エンダーマイト・シルバーフィッシュ削除
tag @s[type=#entity:enemy,tag=] add Garbage

#額縁を無敵に
data modify entity @s[type=item_frame] Invulnerable set value 1b
data modify entity @s[type=glow_item_frame] Invulnerable set value 1b

#SmartMotion E (反発係数)
execute unless score @s[tag=SmartMotion] sm.E matches -2147483648..2147483647 run scoreboard players set @s sm.E 100

#NativeFlag スコア付与 それぞれのタグで付与を独立させる
scoreboard players add @s[tag=DamageProjectile] NativeFlag 1
scoreboard players add @s[tag=SmartMotion] NativeFlag 1
scoreboard players add @s[tag=NativeTask] NativeFlag 1
scoreboard players add @s[tag=Mutated] NativeFlag 1

### 初期化済みタグ付与
tag @s add Initialized
