### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item",Item:{id:"enchanted_golden_apple",Count:1b},PortalCooldown:80,Tags:[DelayedData,HasAI,CallOnInit,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:1d,Target:{Look:"player",Radius:24d,IgnoreBlocks:true}}],Time:[{Name:"Damage",Player:{DamageType:[Global]},Mob:{Physical:100},Distance:{Max:3d},Explosion:-1}]}
#Function
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 5 0.8
