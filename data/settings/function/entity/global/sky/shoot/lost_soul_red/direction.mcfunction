### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"kill"}]},TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Global,Sky,Shoot,LostSoulRed,StandbyState]}]}],Exit:{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:15d,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Global,Sky,Shoot,LostSoulRed,ContactState]}]}],Exit:{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:15d,IgnoreBlocks:true}}]}}]}
