### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,CallOnTick,"SonicABeam"]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,BeamMarkerTp]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:100,Current:100},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
