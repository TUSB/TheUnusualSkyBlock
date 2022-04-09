### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item",Item:{id:"enchanted_golden_apple",Count:1b},PortalCooldown:70,Tags:[DelayedData,CallOnInit,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[-180f,-5f],DirectionRange:[360f,0f],Speed:1.1d,SpeedRange:1.55d,Absolute:{Vertical:true}}],Time:[{Name:"Damage",Player:{DamageType:[Global]},Mob:{Physical:100},Distance:{Max:3d},Explosion:2}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 5 0.8
