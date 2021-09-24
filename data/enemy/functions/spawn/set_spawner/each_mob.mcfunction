###########################################################################
# モブの(計算の要らない)基本情報を、スポナーに反映させる。
###########################################################################

# tusb_mob: MobTags から、モブを召喚させるためのタグを１セット取り出す
data modify entity @s Tags set from storage tusb_mob: MobTags[-1].Tags

# タグに応じて、データを取得する
function settings:enemy/

#召喚時演出
execute if entity @s[tag=SpawnParticles] positioned ~ ~-500 ~ run function makeup:enemy/spawn

#summon minecraft:armor_stand ~ ~-1.4999 ~ {CustomName:'{"text":"システムアマスタ"}',NoGravity:true,Small:true,Invulnerable:true,Invisible:true,Marker:true,Passengers:[{id:"minecraft:spawner_minecart",CustomName:'{"text":"擬態スポナー"}',Invulnerable:1b,CustomDisplayTile:1b,DisplayOffset:12,DisplayState:{Name:"minecraft:chorus_plant",Properties:{up:"true"}},SpawnCount:1s,SpawnRange:5s,MaxNearbyEntities:6s,Delay:-1s,MinSpawnDelay:90s,MaxSpawnDelay:250s,RequiredPlayerRange:20s,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:villager",Tags:[Spawn],Attributes:[{Name:"minecraft:generic.movement_speed",Modifiers:[{Amount:0d,Operation:0,UUID:[I;50,0,0,0]}]}],DeathTime:19s,NoAI:true,Silent:true,Invulnerable:true,AbsorptionAmount:99f,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:9999,ShowParticles:false}],Inventory:[{id:"minecraft:stick",Count:1b,tag:{SpawnEntities:[[{Tags:[Pig],Level:10}],[{Tags:[Sheep],Level:1},{Tags:[Sheep1],Level:2},{Tags:[Sheep2],Level:3}],[{Tags:[Cow],Level:20}]]}}]}}]}]}

#summon villager ~ ~ ~ {Tags:[Spawn],Attributes:[{Name:"minecraft:generic.movement_speed",Modifiers:[{Amount:0d,Operation:0,UUID:[I;50,0,0,0]}]}],DeathTime:19s,NoAI:true,Silent:true,Invulnerable:true,AbsorptionAmount:99f,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:9999,ShowParticles:false}],Inventory:[{id:"minecraft:stick",Count:1b,tag:{SpawnEntities:[[{Tags:[Pig],Level:10}],[{Tags:[Sheep],Level:1},{Tags:[Sheep1],Level:2},{Tags:[Sheep2],Level:3}],[{Tags:[Cow],Level:20}]]}}]}

# tusb_mob: SpawnDataを初期化する
data modify storage tusb_mob: SpawnData set value {Attributes:[{Name:"minecraft:generic.movement_speed",Modifiers:[{Amount:0d,Operation:0,UUID:[I;0,0,0,0]}]},{Name:"minecraft:generic.knockback_resistance"},{Name:"minecraft:generic.attack_knockback"}],Passengers:[]}
# Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[0].UUID[0]にOhMyDatIDを保存
execute store result storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[0].UUID[0] int 1 run scoreboard players get @s OhMyDatID

# 即時ステータスを反映させる
data modify storage tusb_mob: SpawnData merge from storage tusb_mob: "即時ステータス"."ベース"
data modify storage tusb_mob: SpawnData merge from storage tusb_mob: "即時ステータス"."見た目"
data modify storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.follow_range"}].Base set from storage tusb_mob: "即時ステータス"."最大感知範囲"
data modify storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage tusb_mob: "即時ステータス"."基本移動力"
data modify storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set from storage tusb_mob: "即時ステータス"."ノックバック耐性"
data modify storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.attack_knockback"}].Base set from storage tusb_mob: "即時ステータス"."ノックバック力"

# 遅延ステータスを保存する
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList append value {}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1].Level set from storage tusb_mob: MobTags[-1].Level
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス" set from storage tusb_mob: "遅延ステータス"

### 上のモブをリストに追加する
data modify storage tusb_mob: Passengers prepend from storage tusb_mob: SpawnData

### まだ読み込んでいないタグがあれば、繰り返す
data remove storage tusb_mob: MobTags[-1]
execute if data storage tusb_mob: MobTags[-1] run function enemy:spawn/set_spawner/each_mob
