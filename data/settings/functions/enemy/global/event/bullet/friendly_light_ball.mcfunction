### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:64,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"As",Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Facing",Target:{Look:"Enemy",Radius:48d,IgnoreBlocks:true}}],Name:"Step",Speed:1d}],Attack:[{Name:"Damage",Mob:{Light:100},Distance:{Max:3d},AEC:{Particle:"dust",Color:14406822,Duration:3,Radius:3f}}]}
