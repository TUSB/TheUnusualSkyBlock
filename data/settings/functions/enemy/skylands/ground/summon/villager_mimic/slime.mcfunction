### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",Offers:{},Inventory:[{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 5
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:3,IgnoreBlocks:false}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,AmbientSound,Villager]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:2,Current:2},Call:[{Name:"Function",Tags:[Global,Event,Function,AmbientSound,Slime]}]},{Interval:{Min:4,Max:4,Current:20},Loop:{Max:4,Current:4},Call:[{Name:"Function",Tags:[Global,Event,Function,AmbientSound,Slime]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:8,Current:8},Call:[{Name:"Function",Tags:[Global,Event,Function,AmbientSound,Slime]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:16,Current:16},Call:[{Name:"Function",Tags:[Global,Event,Function,AmbientSound,Slime]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
