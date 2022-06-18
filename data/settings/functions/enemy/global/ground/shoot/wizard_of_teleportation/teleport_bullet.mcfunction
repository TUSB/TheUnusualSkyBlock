### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:ender_pearl",CustomName:'{"translate":"転移弾"}',NoGravity:true,PortalCooldown:500,Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:10092}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.5d}],TurnCount:1,Turn:[{Index:1,Target:{Look:"Player",Radius:32d,IgnoreBlocks:1b},Move:{Front:0.5d},Rotate:[5f,20f]}]}
