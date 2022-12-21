### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Teleport"}]}]}]}
