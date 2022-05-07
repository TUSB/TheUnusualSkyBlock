### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Silent:1b,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnInit,NativeTask,SmartMotion,Bounce]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,tag:{CustomModelData:1}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:True}}],Name:"SmartMotion",Speed:{Set:20d}}],TurnCount:2,Turn:[{Index:1,Target:{Look:"Fixed",Rotation:"LeftUp"},Rotate:[4f,0f],Skill:[{Interval:{Min:150,Max:150,Current:150},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Target:{Look:"Fixed",Rotation:"RightUp"},Rotate:[30f,0f],Skill:[{Interval:{Min:50,Max:50,Current:50},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}}]}
