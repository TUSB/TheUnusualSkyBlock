###################################################
# 召喚されたカスタムモブに、ステータスを反映させる。
###################################################


### 攻撃力を計算
execute if data storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" run function enemy:spawn/apply_status/status/attack
execute if data storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" run function enemy:spawn/apply_status/status/special_attack

### モブに他のステータスを計算して反映する
execute if entity @s[tag=Mob] run function enemy:spawn/apply_status/mob

### OhMyDatに保存
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" set from storage tusb_mob: "遅延ステータス"."ステータス"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage tusb_mob: "遅延ステータス".AI

### CallOnInit
execute if entity @s[tag=CallOnInit] run function enemy:ai/call/trigger/initial
