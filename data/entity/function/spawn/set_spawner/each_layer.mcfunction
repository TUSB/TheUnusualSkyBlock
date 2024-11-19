#> entity:spawn/set_spawner/each_layer
###########################################################################
# モブの(計算の要らない)基本情報を、スポナーに反映させる。
###########################################################################

# tusb_mob: MobTags から、モブを召喚させるためのタグを１セット取り出す
data modify storage tusb_mob: MobTags set from storage tusb_mob: MobLayers[-1]

# tusb_mob: Passengersがすでにあったら、上に乗るモブ達なので、保存しておく
data remove storage tusb_mob: PrevPassengers
execute if data storage tusb_mob: Passengers run data modify storage tusb_mob: PrevPassengers set from storage tusb_mob: Passengers
# リストをリセット
data modify storage tusb_mob: Passengers set value []
# このレイヤーのモブを読み込む
execute if data storage tusb_mob: MobTags[-1] run function entity:spawn/set_spawner/each_mob

### Rotation設定
data modify storage tusb_mob: Passengers[].Rotation set from storage tusb_mob: Rotation
# 前の階層のモブ達を乗せる
data modify storage tusb_mob: Passengers[-1].Passengers set from storage tusb_mob: PrevPassengers

data remove storage tusb_mob: MobLayers[-1]
### 最後のデータならスポーンデータとする
execute unless data storage tusb_mob: MobLayers[-1] run data modify storage tusb_mob: SpawnData set from storage tusb_mob: Passengers[-1]
### Pos設定
data modify entity @s SpawnData.entity.Pos set from storage tusb_mob: Pos
### まだ読み込んでいないタグがあれば、繰り返す
execute if data storage tusb_mob: MobLayers[-1] run function entity:spawn/set_spawner/each_layer
