### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Desert,Ground,Shoot,IceMage,Ready]}]},{Interval:{Min:20,Max:60,Current:20},Loop:{Max:5,Current:5},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Direction:[180f,-65f],DirectionRange:[-360f,30f],Speed:1d,SpeedRange:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[TocultColde,Ground,Shoot,IceMage,IceBall],Level:1}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:1}]}],Exit:{Loop:{Max:1,Current:1}}}]}
