### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker_bullet",NoGravity:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 30
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.3d}]}
#Function
particle flame ~ ~ ~ 0.01 0.01 0.01 0.1 5 normal
playsound entity.item_frame.break hostile @a[distance=..32] ~ ~ ~ 1 1.8 0.8
