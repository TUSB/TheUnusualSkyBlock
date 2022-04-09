### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}],Name:"Damage",Player:{Damage:25d},Distance:{Min:0.1d,Max:1.5d}},{Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckNBT",NBT:{OnGround:true}}],Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound block.pointed_dripstone.drip_water hostile @a[distance=..64] ~ ~ ~ 1.0 1.0
