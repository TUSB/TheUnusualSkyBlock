### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Small:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:100,Tags:[DelayedData,HasAI,CallOnInit,CallOnBlock,CooldownRequired,SmartMotion,Stick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"redstone_block",Count:1b,tag:{Enchantments:[{}]}}],Pose:{Head:[180f,45f,0f]}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32,IgnoreBlocks:true}}],Name:"SmartMotion",TP:1b,Speed:{Set:50}}],Block:[{Name:"ChangeTurn",Set:2}],TurnCount:2,Turn:[{Index:1},{Index:2,Skill:[{Interval:{Min:20,Max:20,Current:20},Call:[{Name:"ChangeTurn",Set:1},{Settings:[{Name:"Rotation",Flip:1b},{Name:"Direction",Speed:0.5d}],Name:"SmartMotion",TP:1b,Speed:{Set:50}}]}]}]}