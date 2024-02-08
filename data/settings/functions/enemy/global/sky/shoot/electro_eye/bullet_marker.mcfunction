### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:50,Max:90,Current:70},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Direction:[-180f,-90f],DirectionRange:[360f,180f],Speed:1d,SpeedRange:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,ElectroEye,Bullet],Level:45}]]}]}]}]}
