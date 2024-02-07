### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:150,Current:100},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:3,Current:3,Range:2},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:1d,SpeedRange:2d,Absolute:{Vertical:true}},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,AuroraEye,Shard],Level:50}],[{Tags:[Global,Sky,Shoot,AuroraEye,ShardDirection],Level:50}]]}]}]}]}
