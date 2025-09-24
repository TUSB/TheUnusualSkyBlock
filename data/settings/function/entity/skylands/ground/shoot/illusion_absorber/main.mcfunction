### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:pillager",Silent:1b,CustomName:'{"translate":"魔吸の導師","color":"#FF0000","bold":true}',PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,CooldownRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:crossbow",count:1,components:{"minecraft:unbreakable":{}}},{}],ArmorItems:[{},{},{},{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":1001}}],HandDropChances:[-Infinityf,-Infinityf],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s魔吸の精の主にして、幻覚使いの導師。膨大な魔力を蓄えている。","with":[{"translate":"【能力：範囲攻撃・追撃・MP吸収】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"damage",Player:{},MP:{MP:25}},{Name:"function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,Message]}],Tick:[{Name:"function",Tags:[Global,Event,Function,CommonExe,RotationYFixed]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d}}],Name:"function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}],TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:100,Current:80},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"change_turn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Condition:[{Name:"has_target",Target:{Look:"Player",Radius:16d}}],Name:"change_turn",Set:4},{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:16d}}],Name:"change_turn",Set:3},{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"change_turn",Set:5},{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"change_turn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:3,Current:3},Call:[{Name:"function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicPre]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicChant]},{Name:"spawn",IsChild:true,SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicShaper],Level:45}]]}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,WavePre]}]},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,WaveChant]},{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,IllusionAbsorber,WaveMain],Level:45}]]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Set:1}]}]},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,SummonCommand]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Set:1}]}]}]}
