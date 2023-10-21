### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:pillager",Silent:1b,CustomName:'{"translate":"魔吸の導師","color":"#FF0000","bold":true}',PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,CooldownRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1001}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.25d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Damage",Player:{},MP:{MP:25}},{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,Message]}],Tick:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RotationYFixed]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}],TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:100,Current:80},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}}],Name:"ChangeTurn",Set:4},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}}],Name:"ChangeTurn",Set:3},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:5},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:3,Current:3},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicPre]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicChant]},{Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicShaper],Level:45}]]}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,WavePre]}]},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,WaveChant]},{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,IllusionAbsorber,WaveMain],Level:45}]]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,SummonCommand]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]}]}
