###########################################################################
# モブの(計算の要らない)基本情報を、スポナーに反映させる。
###########################################################################

# tusb_mob: MobTags から、モブを召喚させるためのタグを１セット取り出す
data modify entity @s Tags set from storage tusb_mob: MobTags[-1].Tags

# タグに応じて、データを取得する
execute if entity @s[tag=Pig] run function settings:entity/enemy/debug/pig
execute if entity @s[tag=Sheep] run function settings:entity/enemy/debug/sheep
execute if entity @s[tag=Cow] run function settings:entity/enemy/debug/cow

# tusb_mob: SpawnDataがすでにあったら、上に乗るモブなので、保存しておく
execute if data storage tusb_mob: SpawnData run data modify storage tusb_mob: Passenger set from storage tusb_mob: SpawnData
# tsub_mob: SpawnDataを初期化する
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

### 上のモブを乗せる
data modify storage tusb_mob: SpawnData.Passengers append from storage tusb_mob: Passenger
### Pos設定
data modify entity @s SpawnData.Pos set from storage tusb_mob: Pos

### まだ読み込んでいないタグがあれば、繰り返す
data remove storage tusb_mob: MobTags[-1]
execute if data storage tusb_mob: MobTags[-1] run function entity:enemy/spawn/set_spawner/each_mob
