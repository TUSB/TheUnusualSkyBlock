###################################################
# 召喚されたカスタムモブに、ステータスを反映させる。
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

### 攻撃力を計算
execute if data storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" run function enemy:spawn/apply_status/status/attack
execute if data storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" run function enemy:spawn/apply_status/status/special_attack

### モブに他のステータスを計算して反映する
execute if entity @s[tag=Mob] run function enemy:spawn/apply_status/mob

### OhMyDatに保存
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" set from storage tusb_mob: "遅延ステータス"."ステータス"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage tusb_mob: "遅延ステータス".AI

### 共通データ
scoreboard players set @s TemporaryEffects 0
