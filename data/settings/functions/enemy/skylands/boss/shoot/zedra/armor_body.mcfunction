### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",ShowArms:1b,Marker:1b,Invisible:1b,Silent:1b,Tags:[DelayedData,HasAI,CallOnTick,ZedraBody],DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Pose:{RightArm:[340f,300f,0f],LeftArm:[320f,0f,10f],Head:[0f,0f,0.01f]}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,Zedra,ArmorTick]}]}