### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:75,Max:250,Current:150},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true},Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:3d,SpeedRange:2d,Absolute:{Vertical:true}},{Name:"Direction",Direction:[0f,-90f],Speed:0.5d,SpeedRange:1d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,SherbetEye,Turret],Level:45}]]}]}]}]}
