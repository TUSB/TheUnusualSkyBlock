### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:bat",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],CustomName:'{"translate":"シャーベットサーバント","color":"#FFFFFF"}',Silent:1b,PortalCooldown:400,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
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
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:100,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[TocultColde,Sky,Shoot,SherbetEye,ServantShoot],Level:1}]],Count:1}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
particle enchanted_hit ^0 ^ ^-1 0 0 0 0 1 force @a[distance=..64]
particle enchanted_hit ^0.70711 ^ ^-0.70711 0 0 0 0 1 force @a[distance=..64]
particle enchanted_hit ^1 ^ ^0 0 0 0 0 1 force @a[distance=..64]
particle enchanted_hit ^0.70711 ^ ^0.70711 0 0 0 0 1 force @a[distance=..64]
particle enchanted_hit ^0 ^ ^1 0 0 0 0 1 force @a[distance=..64]
particle enchanted_hit ^-0.70711 ^ ^0.70711 0 0 0 0 1 force @a[distance=..64]
particle enchanted_hit ^-1 ^ ^0 0 0 0 0 1 force @a[distance=..64]
particle enchanted_hit ^-0.70711 ^ ^-0.70711 0 0 0 0 1 force @a[distance=..64]