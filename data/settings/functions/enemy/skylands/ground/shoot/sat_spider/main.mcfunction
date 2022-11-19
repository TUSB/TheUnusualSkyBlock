### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:spider",CustomName:'{"translate":"特殊部隊SAT","color":"#FFFFFF","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,CooldownRequired,NativeTask,SmartMotion,Bounce]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.35d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 175
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,MinRadius:6d}}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:35d},Gravity:{Set:100d},E:0},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:32d,MinRadius:6d}}],Name:"SmartMotion",Stop:true}],TurnCount:1,Turn:[{Index:1}]}
