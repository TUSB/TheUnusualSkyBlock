### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:132,Explosion:{Type:0,Colors:[I;11884375]}}},Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.45d,SpeedRange:1.55d}]}
#Function
particle flame ~ ~ ~ 0.01 0.01 0.01 0.7 5 normal
playsound entity.item_frame.break hostile @a[distance=..32] ~ ~ ~ 1 1.8 0.8
