### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"採掘戦隊マインクラフターペイル","color":"#FF0000","bold":true}',ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f],HandItems:[{id:"minecraft:bow",Count:1b},{id:"tipped_arrow",Count:1b,tag:{CustomPotionColor:14350079}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14350079}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14350079}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14350079}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:14350079}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.29d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 4d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 219
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier4/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s辞表を突き返されたので辞めれなくて困っている。この戦隊ブラック過ぎないか？","with":[{"translate":"【能力：追撃・置換・ペイル】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"MP",MP:25,Percent:true}]},{Condition:[{Name:"RandomChance",Chance:0.25d}],Name:"Damage",Player:{DamageType:[Global,Fire,Blast,Projectile,Fall]},Distance:{Max:1d},AEC:{Particle:"dust 0.369 0.000 0.580 3",Color:0,Duration:40,Radius:1f,Effects:[{Id:14,Amplifier:10b,Duration:10}]}},{Condition:[{Name:"MinMP",MP:30,Percent:true,Inverse:true}],Name:"Function",Tags:[Global,Ground,Shoot,MineCrafter,Change]},{Condition:[{Name:"MinMP",MP:30,Percent:true,Inverse:true}],Name:"Kill"}]}
