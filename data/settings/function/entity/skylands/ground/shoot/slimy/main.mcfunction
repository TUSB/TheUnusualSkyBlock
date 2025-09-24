### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:slime",CustomName:'{"translate":"スライミー","color":"#FFFFFF","bold":true}',Size:1,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b},{id:"minecraft:slow_falling",amplifier:0b,duration:-1,show_particles:0b}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.35d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sボク、カワイイデショ！","with":[{"translate":"【能力：射的】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"random_chance",Chance:0.5d}],Name:"function",Tags:[Skylands,Ground,Shoot,Slimy,Debuff1]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:140,Current:100},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:16d,IgnoreBlocks:false}}],Name:"change_turn",Loop:1}]}]},{Index:2,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:3,Current:3},Call:[{Name:"function",Tags:[Skylands,Ground,Shoot,Slimy,Sound]},{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:0.5d,Absolute:{Vertical:true}},{Name:"Direction",Direction:[-90f,0f],DirectionRange:[180f,0f],Speed:1d,SpeedRange:0.5d,Absolute:{Vertical:true}}],Name:"spawn",Count:1,SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,Slimy,Ball],Level:15}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Loop:1}]}]}]}
