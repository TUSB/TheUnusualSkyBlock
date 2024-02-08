### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BlazeInit]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:20,Current:20},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BlazeFirst]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BlazeSet]},{Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BlazeSecond]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:9,Current:9},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BlazeSecond]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BlazeThird]},{Name:"Kill"}],Once:1}]}]}
