### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:40,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Friendly,Shoot,SalamanderKid,Breath],Level:1}]]},{Name:"Message",Message:'{"translate":"Attack1","color":"#FFFFFF"}'}]}],Exit:{Time:10,TimeCount:10}}]}
