### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:true,Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:slime_ball",Count:1b}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.8d,Target:{Look:"enemy",Radius:64d,IgnoreBlocks:true}}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[DebugRoom,Friendly,Shoot,FriendlyPoisonEye,PoisonBallDirection]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"enemy",Radius:30d,IgnoreBlocks:true}}],Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound entity.wither.shoot master @a[distance=..40] ~ ~ ~ 1.0 2.0
