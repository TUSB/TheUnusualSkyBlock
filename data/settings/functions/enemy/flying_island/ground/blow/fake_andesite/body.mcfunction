### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:magma_cube",Silent:1b,CustomName:'{"translate":"block.minecraft.andesite"}',ActiveEffects:[{Id:14,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Size:1,NoAI:0b,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,CallOnDeath,CallOnDamage,TickingRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.35d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 10d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0.3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 77
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 77
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 140
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 115
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 123
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"中から音が聞こえる。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[FlyingIsland,Ground,Blow,FakeAndesite,Destroyed]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,Combat,Silverfish],Level:1}]],Count:1,CountRange:3}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Stone]}]}
