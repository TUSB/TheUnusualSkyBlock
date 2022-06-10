### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Global:true,Target:{Look:"Enemy",Radius:1.5d,IgnoreBlocks:true},Absolute:{Vertical:true}}],Name:"Message",Message:'{"translate":"いる...!","color":"#FFFFFF"}'},{Name:"Function",Tags:[Global,Friendly,Shoot,SalamanderKid,FlamePillarSystem]}]}],Exit:{Time:60,TimeCount:60}}]}
