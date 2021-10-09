###########################################################################
# モブの(計算の要らない)基本情報を、スポナーに反映させる。
###########################################################################

# tusb_mob: MobTags から、モブを召喚させるためのタグを１セット取り出す
data modify entity @s Tags set from storage tusb_mob: MobTags[-1].Tags

# タグに応じて、データを取得する
function settings:enemy/

#召喚時演出
execute if entity @s[tag=SpawnParticles] run function makeup:enemy/spawn

# tusb_mob: SpawnDataを初期化する
data modify storage tusb_mob: SpawnData set value {Attributes:[{Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance"},{Name:"minecraft:generic.attack_knockback"}],Passengers:[]}

# UUID[1]と[2]を-1して保存
execute store result storage tusb_mob: UUID[1] int 0.99999 run data get storage tusb_mob: UUID[1]
execute store result storage tusb_mob: UUID[2] int 0.99999 run data get storage tusb_mob: UUID[2]
data modify storage tusb_mob: SpawnData.UUID set from storage tusb_mob: UUID

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
