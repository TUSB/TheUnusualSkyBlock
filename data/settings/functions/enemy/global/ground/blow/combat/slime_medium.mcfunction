### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:slime",Tags:[Mob,Enemy,DelayedData,CallOnDeath,CallOnTimeOut,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog,"NoLootTableAdd"],CustomName:'{"translate":"コンバットスライム"}',Size:3,PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1.5d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 175
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sオオバ味。","with":[{"translate":"【能力：終撃・追撃・コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,Combat,SlimeLittle],Level:1}]],Count:1}],Time:[{Name:"ChangeAI",Death:[{}]}],Attack:[{Name:"Damage",Player:{Damage:0d},Distance:{Max:0d},AEC:{Effects:[{Id:2,Amplifier:1b,Duration:30,ShowParticles:false}]}}]}
