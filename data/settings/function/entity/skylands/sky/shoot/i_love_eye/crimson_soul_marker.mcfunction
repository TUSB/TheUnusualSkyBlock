### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:5d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Sky,Shoot,ILoveEye,CrimsonSoulSummon]},{Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:5d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Sky,Shoot,ILoveEye,CrimsonSoulSummon]},{Name:"Kill"}]}}
