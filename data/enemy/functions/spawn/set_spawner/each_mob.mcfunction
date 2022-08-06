###########################################################################
# モブの(計算の要らない)基本情報を、スポナーに反映させる。
###########################################################################

# tusb_mob: MobTags から、モブを召喚させるためのタグを１セット取り出す
data modify entity @s Tags set from storage tusb_mob: MobTags[-1].Tags

#データを初期化
data remove storage tusb_mob: "即時ステータス"
data remove storage tusb_mob: "遅延ステータス"

# タグに応じて、データを取得する
function settings:enemy/

#召喚時演出
execute if entity @s[tag=SpawnParticles] run function makeup:enemy/spawn

#モブのレベルを引き継ぐ
execute if score _ Level matches 1.. store result storage tusb_mob: MobTags[-1].Level int 1 run scoreboard players get _ Level

# tusb_mob: SpawnDataを初期化する
data modify storage tusb_mob: SpawnData set value {Attributes:[{Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance"},{Name:"minecraft:generic.attack_knockback"}],Passengers:[]}

# OhMyDatIDを保存
execute store result storage tusb_mob: SpawnData.TicksFrozen int 1 run scoreboard players get @s OhMyDatID

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

# 親IDを保存する
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1].ParentID set from storage tusb_mob: MobTags[-1].ParentID


### 上のモブをリストに追加する
data modify storage tusb_mob: Passengers prepend from storage tusb_mob: SpawnData

### まだ読み込んでいないタグがあれば、繰り返す
data remove storage tusb_mob: MobTags[-1]
execute if data storage tusb_mob: MobTags[-1] run function enemy:spawn/set_spawner/each_mob
