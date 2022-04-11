### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:43,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"As",Target:{Look:"Enemy",Radius:48d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,-90f],Speed:5d,Absolute:{Horizontal:true,Vertical:true}},{Name:"Facing",Target:{Look:"Enemy",Radius:5d,IgnoreBlocks:false}}],Name:"Step",Speed:2d}],Attack:[{Name:"Damage",Mob:{Lightning:100},Distance:{Max:1d},AEC:{Particle:"dust",Color:16755968,Duration:10,Radius:0.1f}}]}
