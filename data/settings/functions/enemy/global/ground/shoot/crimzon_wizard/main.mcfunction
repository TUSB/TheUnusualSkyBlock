### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",CustomName:'{"translate":"深紅の幻魔師","color":"#FF0000","bold":true}',Silent:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,ActiveEffects:[{Id:28,Amplifier:1b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:air",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:netherrack",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 48d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 70
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 107
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 175
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier4/common",Count:1,Chance:0.35d},{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.35d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s上級の炎属性魔法使い。","with":[{"translate":"【能力：射的・範囲攻撃・火だるま・爆撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RotationYFixed]}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:25},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:16d}}],Name:"ChangeTurn",Set:2},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:3},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}}],Name:"ChangeTurn",Set:4},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,MinRadius:16d}},{Name:"RandomChance",Chance:0.3d}],Name:"ChangeTurn",Set:5},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,MinRadius:5d}}],Name:"ChangeTurn",Set:5}]}],Exit:{Time:20,TimeCount:20}},{Index:2,Skill:[{Interval:{Min:40,Max:80,Current:60},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:2,Current:2},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:1d,SpeedRange:2d,Absolute:{Vertical:true}}],Condition:[{Name:"CheckBlock",Block:[Air]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,CrimzonWizard,Summon],Level:55}]]}]},{Interval:{Min:30,Max:30,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true},Anchor:"Feet"}],Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,QuakePosition]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1.5d,SpeedRange:0.5d}],Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[Global,Ground,Shoot,CrimzonWizard,BulletShaft],Level:55}]]}]},{Interval:{Min:30,Max:30,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]}]}
