#> entity:spawn/apply_status/act
###################################################
# 召喚されたカスタムモブに、ステータスを反映させる。
###################################################


### 攻撃力を計算
execute if data storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" run function entity:spawn/apply_status/status/attack
execute if data storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" run function entity:spawn/apply_status/status/magic_attack
execute if data storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" run function entity:spawn/apply_status/status/unreasonable_attack

### モブに他のステータスを計算して反映する
execute if entity @s[tag=Mob] run function entity:spawn/apply_status/mob

### OhMyDatに保存
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" set from storage tusb_mob: "遅延ステータス"."ステータス"
## MobAIの前準備
data modify storage mob_data: AI set from storage tusb_mob: "遅延ステータス".AI
execute if entity @s[tag=HasAI] run function ai:turn/preparation
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI

### CallOnInit
execute if entity @s[tag=CallOnInit] run function ai:call/trigger/initial
