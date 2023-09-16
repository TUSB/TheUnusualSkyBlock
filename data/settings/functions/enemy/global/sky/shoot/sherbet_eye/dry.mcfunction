### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Sky,Shoot,SherbetEye,DryInit]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,SherbetEye,DryStart]}],Once:1},{Interval:{Min:25,Max:25,Current:25},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,SherbetEye,DryEnd]},{Name:"Kill"}]}]}]}
