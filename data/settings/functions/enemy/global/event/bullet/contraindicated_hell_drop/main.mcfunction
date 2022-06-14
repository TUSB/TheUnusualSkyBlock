### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:48d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-15f,-15f],DirectionRange:[30f,30f]}],Name:"Spawn",Count:6,SpawnEntities:[[{Tags:[Global,Event,Bullet,ContraindicatedHellDrop,Bullet],Level:1}]]},{Name:"Kill"}]}
