### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Silent:1b,CustomName:'{"translate":"蒼白霊","color":"#FFFFFF","bold":true}',active_effects:[{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:diamond_sword",count:1,components:{"minecraft:unbreakable":{}}},{id:"minecraft:soul_lantern",count:1}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":5813734,"minecraft:unbreakable":{}}},{id:"minecraft:cyan_stained_glass",count:1}],HandDropChances:[-Infinityf,-Infinityf],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.15d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 250
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s強い怨念によって生み出された蒼い亡霊。追尾弾が厄介。","with":[{"translate":"【能力：射的・凍結】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"RandomChance",Chance:0.4d}],Name:"Function",Tags:[Skylands,Ground,Shoot,PaleSpirit,Effect1]}],Tick:[{Name:"Function",Tags:[Skylands,Ground,Shoot,PaleSpirit,Appearence]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:160,Current:100},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,MinRadius:3d,IgnoreBlocks:true}}],Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Direction:[0f,0f],DirectionRange:[360f,0f],Speed:0.1d,SpeedRange:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,PaleSpirit,Bullet],Level:1}]]}],MP:5}],Exit:{Loop:{Max:1,Current:1}}}]}
