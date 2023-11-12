### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:200},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Speed:6d,SpeedRange:3d},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:3d,SpeedRange:3d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AssaultWarden,TripleSonicMain],Level:111}]]}]},{Interval:{Min:200,Max:300,Current:200},Loop:{Max:1,Current:1},Call:[{}]}]}]}
