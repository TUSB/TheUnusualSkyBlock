### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",PortalCooldown:300,Tags:[DelayedData,HasAI,CallOnInit,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:ender_eye",count:1}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"step",Direction:[0f,0f],DirectionRange:[230f,0f],Speed:0.7d}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound entity.wither.shoot hostile @a[distance=..64] ~ ~ ~ 0.7 0.5 0
