### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"ルナティックレーザー","color":"#FF0000","bold":true}',Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Sky,Shoot,LunaticEye,LaserInit]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Enemy","LunaticEye"]}],Once:1},{Interval:{Min:1,Max:1,Current:30},Loop:{Max:20,Current:20},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,LunaticEye,LaserAlert]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,LunaticEye,LaserStart]},{Name:"Kill"}],Once:1}]}]}
