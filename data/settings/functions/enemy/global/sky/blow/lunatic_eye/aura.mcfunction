### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:amethyst_block",Count:1b}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,0f],DirectionRange:[230f,0f],Speed:0.7d}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:30d,IgnoreBlocks:true}}],Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound entity.wither.shoot hostile @a[distance=..40] ~ ~ ~ 1.0 0.5
