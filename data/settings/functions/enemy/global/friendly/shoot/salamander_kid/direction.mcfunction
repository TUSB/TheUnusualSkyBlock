### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:2,Current:2},Call:[{Name:"Function",Tags:[Global,Friendly,Shoot,SalamanderKid,Appearance]}]}]}]}
