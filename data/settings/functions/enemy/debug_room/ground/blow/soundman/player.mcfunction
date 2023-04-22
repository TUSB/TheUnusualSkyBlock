### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Silent:1b,Tags:[Mob,Enemy,DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:4,Max:4,Current:4},Loop:{Max:16,Current:16},Call:[{Name:"Function",Tags:[DebugRoom,Event,Function,Soundman,Sound1]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Call:[{Name:"Kill"}]}]}]}