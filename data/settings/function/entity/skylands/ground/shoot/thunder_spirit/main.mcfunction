### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Silent:1b,CustomName:'{"translate":"召雷霊","color":"#FFFFFF","bold":true}',active_effects:[{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:unbreakable":{}}},{id:"minecraft:soul_lantern",count:1}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16772972,"minecraft:unbreakable":{}}},{id:"minecraft:gold_block",count:1}],HandDropChances:[-Infinityf,-Infinityf],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s強い怨念によって生み出された稲妻をほとばしらせる亡霊。","with":[{"translate":"【能力：貫通・座標攻撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"damage",Player:{DamageType:[Global],BypassArmor:true,Effectiveness:50},Distance:{Max:1.5d},AEC:{Radius:0.5f,potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:2b,duration:100,show_particles:false}]}}}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:160,Current:100},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,ThunderSpirit,Thunder],Level:1}]]},{Name:"function",Tags:[Skylands,Ground,Shoot,ThunderSpirit,ThunderAct]}],MP:5}]}]}
