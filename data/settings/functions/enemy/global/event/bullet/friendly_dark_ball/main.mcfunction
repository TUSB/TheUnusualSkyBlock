### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:true,PortalCooldown:120,Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:85,Explosion:{Type:0b,Colors:[I;16777215]}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1d}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:8},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:48d,IgnoreBlocks:true}}],Name:"Step",Speed:0.25d}]}]}],ProjectileDamage:{Dark:80}}
