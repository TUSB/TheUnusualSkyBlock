### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Offers:{},Inventory:[{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b},{id:"minecraft:stone",Count:1b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,AnalyseLog]}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"ぼく、わるいむらびとじゃないよ。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:3,IgnoreBlocks:false}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,AmbientSound,Villager]}]},{Interval:{Min:30,Max:30,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,AttackSound,Jump]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,Combat,Vindicator],Level:1}]]},{Name:"Kill"}]}]}]}
