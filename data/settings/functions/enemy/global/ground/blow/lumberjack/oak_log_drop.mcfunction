### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item",PortalCooldown:200,Tags:[DelayedData,CallOnInit,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"oak_log",Count:1b}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[-180f,-5f],DirectionRange:[360f,0f],Speed:1.1d,SpeedRange:1.55d,Absolute:{Vertical:true}}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
