#> entity:spawn/set_spawner/each_mob
###########################################################################
# モブの(計算の要らない)基本情報を、スポナーに反映させる。
###########################################################################

# tusb_mob: MobTags から、モブを召喚させるためのタグを１セット取り出す
data modify entity @s Tags set from storage tusb_mob: MobTags[-1].Tags

#データを初期化
data remove storage tusb_mob: "即時ステータス"
data remove storage tusb_mob: "遅延ステータス"

# 属性値デフォルト
data modify storage tusb_mob: "遅延ステータス"."ステータス" set value {"炎属性値":100,"氷属性値":100,"雷属性値":100,"光属性値":100,"闇属性値":100}

# タグに応じて、データを取得する
function #entity:spawn_data

#召喚時演出
execute if entity @s[tag=SpawnParticles] run function makeup:entity/spawn

#モブのレベルを引き継ぐ
execute if score _ Level matches 1.. store result storage tusb_mob: MobTags[-1].Level int 1 run scoreboard players get _ Level

# tusb_mob: SpawnDataを初期化する
data modify storage tusb_mob: SpawnData set value {attributes:[{id:"minecraft:generic.movement_speed"},{id:"minecraft:generic.knockback_resistance"},{id:"minecraft:generic.attack_knockback"}],Passengers:[]}

# OhMyDatIDを保存
execute store result storage tusb_mob: SpawnData.TicksFrozen int 1 run scoreboard players get @s OhMyDatID

# 即時ステータスを反映させる
data modify storage tusb_mob: SpawnData merge from storage tusb_mob: "即時ステータス"."ベース"
data modify storage tusb_mob: SpawnData merge from storage tusb_mob: "即時ステータス"."見た目"
execute if data storage tusb_mob: SpawnData{Tags:[Enemy]} unless data storage tusb_mob: SpawnData.Team run data modify storage tusb_mob: SpawnData.Team set value "Enemy"
execute if data storage tusb_mob: SpawnData{Team:"None"} run data remove storage tusb_mob: SpawnData.Team
data modify storage tusb_mob: SpawnData.attributes[{id:"minecraft:generic.follow_range"}].base set from storage tusb_mob: "即時ステータス"."最大感知範囲"
data modify storage tusb_mob: SpawnData.attributes[{id:"minecraft:generic.movement_speed"}].base set from storage tusb_mob: "即時ステータス"."基本移動力"
data modify storage tusb_mob: SpawnData.attributes[{id:"minecraft:generic.knockback_resistance"}].base set from storage tusb_mob: "即時ステータス"."ノックバック耐性"
data modify storage tusb_mob: SpawnData.attributes[{id:"minecraft:generic.attack_knockback"}].base set from storage tusb_mob: "即時ステータス"."ノックバック力"

# 遅延ステータスを保存する
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList append value {}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1].Level set from storage tusb_mob: MobTags[-1].Level
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス" set from storage tusb_mob: "遅延ステータス"
execute unless data storage tusb_mob: "即時ステータス"."ベース"{Tags:[DelayedData]} run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]

# 親IDを保存する
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1].ParentID set from storage tusb_mob: MobTags[-1].ParentID


### 上のモブをリストに追加する
data modify storage tusb_mob: Passengers prepend from storage tusb_mob: SpawnData

### まだ読み込んでいないタグがあれば、繰り返す
data remove storage tusb_mob: MobTags[-1]
execute if data storage tusb_mob: MobTags[-1] run function entity:spawn/set_spawner/each_mob
