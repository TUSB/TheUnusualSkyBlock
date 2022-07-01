### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",PortalCooldown:120,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:22,Explosion:{Type:0,Colors:[I;16777215]}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:48d,IgnoreBlocks:true}}],Name:"Step",Speed:2d}],Attack:[{Name:"Damage",Mob:{Ice:100},Distance:{Max:1d},AEC:{Particle:"dust",Color:574719,Duration:10,Radius:0.1f}}],ProjectileDamage:{Ice:20}}
