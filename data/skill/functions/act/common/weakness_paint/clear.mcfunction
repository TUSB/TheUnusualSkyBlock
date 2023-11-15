
### ウィークペイント解除

function oh_my_dat:please
data modify storage tusb_mob: "遅延ステータス"."ステータス" set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" 

execute if score @s Weakness matches ..0 store result storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" int 1 run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" 2
execute if score @s Weakness matches 900..1000 store result storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" int 1 run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" 4
function enemy:spawn/apply_status/status/attack

execute if score @s Weakness matches ..0 store result storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" int 1 run data get storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" 2
execute if score @s Weakness matches 900..1000 store result storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" int 1 run data get storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" 4
function enemy:spawn/apply_status/status/special_attack

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" set from storage tusb_mob: "遅延ステータス"."ステータス"

scoreboard players reset @s Weakness
