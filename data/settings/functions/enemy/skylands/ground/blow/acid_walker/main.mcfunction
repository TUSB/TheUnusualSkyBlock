### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"アシッドウォーカー","color":"#FFFFFF","bold":true}',Silent:1b,ActiveEffects:[{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:10479289},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8238482},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6063467},Unbreakable:1b}},{id:"minecraft:waxed_oxidized_cut_copper",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 60
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 120
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Blow,AcidWalker,Acid],Level:27}]]}]}]}]}
