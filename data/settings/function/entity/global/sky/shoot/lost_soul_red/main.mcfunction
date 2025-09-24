### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",CustomName:'{"translate":"迷える魂","color":"#FF0000","bold":true}',Silent:true,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",count:1,components:{"minecraft:enchantment_glint_override":true}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 44d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.4d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1.5d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.3d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:44d,IgnoreBlocks:true}}],Name:"step",Speed:0.45d}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:100d,IgnoreBlocks:true},Half:"up"}],Name:"step",Direction:[0f,-90f],DirectionRange:[0f,25f],Speed:0.85d}]}],Exit:{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"step",Speed:-0.4d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:44d,IgnoreBlocks:true}}]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:44d,IgnoreBlocks:true},Half:"up"}],Name:"step",Direction:[0f,-90f],DirectionRange:[0f,25f],Speed:0.8d}]}],Exit:{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}}]}
