### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,CooldownRequired,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1,Explosion:{Type:0b,Colors:[I;16777215]}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:48d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]}],Name:"Step",Speed:1d}],ProjectileDamage:{Fire:80}}
