
### ウィークペイント命中

function #oh_my_dat:please
data modify storage tusb_mob: "遅延ステータス"."ステータス" set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" 

execute if entity @e[tag=WeakPaint,limit=1,sort=nearest,scores={Weakness=1}] store result storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" int 0.1 run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" 5
execute if entity @e[tag=WeakPaint,limit=1,sort=nearest,scores={Weakness=2}] store result storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" int 0.01 run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" 25
function enemy:spawn/apply_status/status/attack

execute if entity @e[tag=WeakPaint,limit=1,sort=nearest,scores={Weakness=1}] store result storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" int 0.1 run data get storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" 5
execute if entity @e[tag=WeakPaint,limit=1,sort=nearest,scores={Weakness=2}] store result storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" int 0.01 run data get storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" 25
function enemy:spawn/apply_status/status/special_attack

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" set from storage tusb_mob: "遅延ステータス"."ステータス"

execute if entity @e[tag=WeakPaint,limit=1,sort=nearest,scores={Weakness=1}] run scoreboard players set @s Weakness 90
execute if entity @e[tag=WeakPaint,limit=1,sort=nearest,scores={Weakness=2}] run scoreboard players set @s Weakness 1120
