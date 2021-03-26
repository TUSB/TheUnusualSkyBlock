###########################################################################
# モブの(計算の要らない)基本情報を、スポナーに反映させる。
###########################################################################

# スポナーカートでOhMyDatIDを取得
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList set value []

# それぞれのモブの情報を読み取る
data remove storage tusb_mob: SpawnData
data remove storage tusb_mob: Passenger
execute if data storage tusb_mob: MobTags[-1] run function entity:enemy/spawn/set_spawner/each_mob

### SpawnDataに保存
data modify entity @s SpawnData.Passengers[0] set from storage tusb_mob: SpawnData
### Pos設定
data modify entity @s SpawnData.Pos set from storage tusb_mob: Pos
### 召喚したら消えるようにタグを付与
data modify entity @s Tags set value [OneTimeSpawner]
