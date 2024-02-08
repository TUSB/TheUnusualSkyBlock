### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,CallOnInit,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSummoner,AecInit]}],Tick:[{Name:"Function",Tags:[Skylands,Boss,Summon,SilverColony,SummonAec3]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSummoner,AecTick1]}],Once:1},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Summon,SilverColony,SummonAec2]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSummoner,AecSummonMotion]},{Name:"Kill"}],Once:1}]}]}
