### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"アシッドウォーカー","color":"#FFFFFF","bold":true}',Silent:1b,active_effects:[{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":10479289,"minecraft:unbreakable":{}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":8238482,"minecraft:unbreakable":{}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":6063467,"minecraft:unbreakable":{}}},{id:"minecraft:waxed_oxidized_cut_copper",count:1}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s酸をばら撒きながら歩くゾンビ。","with":[{"translate":"【能力：範囲】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Blow,AcidWalker,Acid],Level:27}]]}]}]}]}
