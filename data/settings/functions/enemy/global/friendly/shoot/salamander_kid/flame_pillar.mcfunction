### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Friendly,Shoot,SalamanderKid,FlamePillarAftertaste]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"柱どぉおおおん！！！","color":"#FFFFFF"}'},{Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
