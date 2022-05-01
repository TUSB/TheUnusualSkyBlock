### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:1b,PortalCooldown:600,Tags:[DelayedData,CallOnInit,CallOnTimeOut,CooldownRequired,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:2001,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[0f,0f],Speed:0.7d}],Time:[{Name:"Kill"}]}
#Function
playsound entity.shulker.shoot neutral @a[distance=..20] ~ ~ ~ 1.0 2.0
