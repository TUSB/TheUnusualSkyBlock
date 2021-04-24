###################################################
# 召喚されたカスタムモブに、ステータスを反映させる。
###################################################

### スポナーカートのOhMyDatIDを取得
execute store result score _ OhMyDatID run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[0].UUID[0]

### OhMyDatIDをIDを使って呼び出す
function oh_its_dat:please

### ストレージからレベルとステータスを取り出す
execute store result score @s Level run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1].Level
data modify storage tusb_mob: "遅延ステータス" set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]

### 属性値
execute store result score @s ElementFire run data get storage tusb_mob: "遅延ステータス"."炎属性値"
execute store result score @s ElementCold run data get storage tusb_mob: "遅延ステータス"."氷属性値"
execute store result score @s ElementLightning run data get storage tusb_mob: "遅延ステータス"."雷属性値"
execute store result score @s ElementLight run data get storage tusb_mob: "遅延ステータス"."光属性値"
execute store result score @s ElementDark run data get storage tusb_mob: "遅延ステータス"."闇属性値"
### ステータスを計算して反映する
function entity:enemy/spawn/apply_status/calc

### 共通NBT
data modify entity @s AbsorptionAmount set value 1000000f
data modify entity @s DeathTime set value 19s
