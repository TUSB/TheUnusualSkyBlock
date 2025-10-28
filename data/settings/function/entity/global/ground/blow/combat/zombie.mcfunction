### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"コンバットゾンビ"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-1E300f,-1E300f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 135
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Chance:d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s標準的なゾンビです。","with":[{"translate":"【能力：反撃・ステータス変動】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"change_status",Defense:{Add:4,Limit:250},SpecialDefense:{Add:4,Limit:250}}],TurnCount:7,Turn:[{Index:1,Exit:{Time:200,TimeCount:200}},{Index:2,Exit:{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:20,IgnoreBlocks:true}}]}},{Index:3,Skill:[{Call:[{Name:"merge_nbt",NBT:{attributes:[{id:movement_speed,base:0d}]}},{Name:"change_status",Defense:{Add:1000,Limit:1500},SpecialDefense:{Add:1000,Limit:1500}},{Name:"change_ai",Damage:[]}]},{Interval:{Min:3,Max:5,Current:3},Loop:{Max:8,Current:8},Call:[{Name:"function",Tags:[Global,Ground,Function,Combat,ZombieMutation1-2]}]},{Call:[{Name:"function",Tags:[Global,Ground,Function,Combat,ZombieMutation1-1]},{Name:"change_ai",Damage:[{Name:"change_status",Defense:{Add:4,Limit:250},SpecialDefense:{Add:4,Limit:250}},{Name:"heal",Range:0,Multiplier:1d,Condition:[{Name:"random_chance",Chance:0.09d},{Name:"mp",MP:13}]}],Tick:[{Name:"function",Tags:[Global,Ground,Function,Combat,ZombieAura1]}]},{Name:"change_status",Attack:{Add:30},Defense:{Add:20},SpecialDefense:{Add:20}},{Name:"merge_nbt",NBT:{attributes:[{id:movement_speed,base:0.28d},{id:knockback_resistance,base:0.3d}]}},{Name:"change_status",Defense:{Add:-1000,Limit:250},SpecialDefense:{Add:-1000,Limit:250}]}],Exit:{Loop:{Max:3,Current:3}}},{Index:4,Exit:{Time:200,TimeCount:200}},{Index:5,Exit:{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:20,IgnoreBlocks:true}}]}},{Index:6,Skill:[{Call:[{Name:"merge_nbt",NBT:{attributes:[{id:movement_speed,base:0d}]}},{Name:"change_status",Defense:{Add:1000,Limit:1500},SpecialDefense:{Add:1000,Limit:1500}},{Name:"change_ai",Damage:[]}]},{Interval:{Min:3,Max:5,Current:3},Loop:{Max:8,Current:8},Call:[{Name:"function",Tags:[Global,Ground,Function,Combat,ZombieMutation2-2]}]},{Call:[{Name:"function",Tags:[Global,Ground,Function,Combat,ZombieMutation2-1]},{Name:"change_ai",Damage:[{Name:"change_status",Defense:{Add:4,Limit:250},SpecialDefense:{Add:4,Limit:250}},{Name:"heal",Range:0,Multiplier:1d,Condition:[{Name:"random_chance",Chance:0.09d},{Name:"mp",MP:13}]},{Name:"change_turn",Set:8}],Tick:[{Name:"function",Tags:[Global,Ground,Function,Combat,ZombieAura2]}]},{Name:"change_status",Attack:{Add:32},HP:{Add:41},Defense:{Add:39},SpecialDefense:{Add:39}},{Name:"merge_nbt",NBT:{attributes:[{id:movement_speed,base:0.34d},{id:knockback_resistance,base:1d}]}},{Name:"change_status",Defense:{Add:-1000,Limit:250},SpecialDefense:{Add:-1000,Limit:250}}]}],Exit:{Loop:{Max:3,Current:3}}},{Index:7}]}
