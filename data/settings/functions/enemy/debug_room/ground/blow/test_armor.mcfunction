### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",ShowArms:1b,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Pose:{RightArm:[10f,0f,105f],LeftArm:[210f,0f,0f],Head:[210f,0f,0f]}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,RotateArmor,Main],Tick:5,Pose:{Head:[10f,0f,0f],LeftArm:[10f,0f,0f],RightArm:[350f,350f,20f]}}],Once:1}]}]}
