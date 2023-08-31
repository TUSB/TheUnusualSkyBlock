### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",PortalCooldown:200,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.17d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:item/bow/a_ray_on_the_move",Count:2,CountRange:3,Chance:0.5d},{Loot:"item:item/gold_nugget/dragon_scale/3",Chance:0.31d},{Item:{id:"minecraft:diamond"},Count:2,Chance:1d},{Item:{id:"minecraft:stone",tag:{display:{Name:'{"text":"aaa"}'}}},Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"テスト用だよ。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Damage",Distance:{Max:0.2},Player:{Damage:5},AEC:{Duration:10,Particle:"minecraft:witch",Radius:2d}}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,DaemonEye,Appearance]}]}
