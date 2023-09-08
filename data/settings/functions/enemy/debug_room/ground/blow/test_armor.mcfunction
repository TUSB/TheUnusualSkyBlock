### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",ShowArms:1b,Tags:[Mob,DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Parabolic",MotionTick:40,MotionGravity:0.03d,Settings:[{Name:"At",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]}],Once:1}]}]}
