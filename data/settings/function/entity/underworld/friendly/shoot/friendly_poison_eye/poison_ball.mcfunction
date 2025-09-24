### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:true,Tags:[DelayedData,HasAI,CallOnInit,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:slime_ball",count:1}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:true}}],Name:"step",Speed:0.8d}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Underworld,Friendly,Shoot,FriendlyPoisonEye,PoisonBallDirection]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Enemy",Radius:30d,IgnoreBlocks:true}}],Name:"kill"}]}],Exit:{Loop:{Max:1,Current:1}}}],ProjectileDamage:{physical:40,magic:90}}
#Function
playsound entity.wither.shoot neutral @a[distance=..40] ~ ~ ~ 0.7 2.0 0
