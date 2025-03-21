### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:16d,Absolute:{Vertical:true}}],Condition:[{Name:"CheckBlock",Block:[Air]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Summon,GhastCarrier,Main],Level:90}],[{Tags:[Skylands,Sky,Shoot,ILoveEye,Main],Level:90}]]},{Name:"Kill"}]}
