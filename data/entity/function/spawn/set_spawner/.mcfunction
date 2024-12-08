#> entity:spawn/set_spawner/
###########################################################################
# モブの(計算の要らない)基本情報を、スポナーに反映させる。
###########################################################################

# スポナーカートでOhMyDatIDを取得
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList set value []

# それぞれのモブの情報を読み取る
data remove storage tusb_mob: Passengers
data remove storage tusb_mob: PrevPassengers
execute if data storage tusb_mob: MobLayers[-1] run function entity:spawn/set_spawner/each_layer

### SpawnDataに保存
data modify entity @s SpawnData.entity.Passengers[0] set from storage tusb_mob: SpawnData
### Pos設定
data modify entity @s SpawnData.entity.Pos set from storage tusb_mob: Pos.after
### 召喚したら消えるようにタグを付与
data modify entity @s Tags set value [OneTimeSpawner,TickingRequired]

# タグ付け
tag @s add Runner
