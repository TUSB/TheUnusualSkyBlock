### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:piglin",CustomName:'{"translate":"ピグリン","color":"#FF0000"}',NoGravity:false,PortalCooldown:600,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 40d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 50
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:40,IgnoreBlocks:true}}]}},{Index:2,Target:{Look:"player",Radius:40d,IgnoreBlocks:1b},Rotate:[-360f,-360f],Skill:[{Interval:{Min:20,Max:20,Current:20},Call:[{Name:"Casting"}]}],Exit:{Time:1,TimeCount:1}},{Index:3,Target:{Look:"player",Radius:40d,IgnoreBlocks:1b},Skill:[{Interval:{Min:20,Max:20,Current:20},Call:[{Name:"Laser",Laser:"PiglinSnipe",Loop:80}]}],Exit:{Time:1,TimeCount:1}}]}
