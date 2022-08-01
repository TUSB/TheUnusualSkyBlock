###################################################
# スポナーカートからデータを取り出す
###################################################

### スポナーカートのOhMyDatIDを取得
execute store result score _ OhMyDatID run data get entity @s TicksFrozen
data remove entity @s TicksFrozen

### OhMyDatIDをIDを使って呼び出す
function oh_its_dat:please

### ストレージからレベルとステータスを取り出す
execute store result score @s Level run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1].Level
data modify storage tusb_mob: "遅延ステータス" set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス"
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]

function enemy:spawn/apply_status/act
