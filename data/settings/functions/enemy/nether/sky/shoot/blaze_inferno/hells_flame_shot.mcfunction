### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true,PortalCooldown:60,Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-3f,-3f],DirectionRange:[6f,6f],Speed:0.8d,Target:{Look:"player",Radius:64d,IgnoreBlocks:true}}]}
#Function
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 5 0.8
