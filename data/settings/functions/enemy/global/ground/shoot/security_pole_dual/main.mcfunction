### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable,AnalyseLog,"SecurityPole","Unmoved"],CustomName:'{"translate":"セキュリティポール・デュアル","color":"#FF0000","bold":true}',DeathTime:19s,NoAI:true,Silent:true,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:18,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:127b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,61,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjI2YjM4OTRhYTkwYmEwNGQwZGI4OWE2ZGQ2MDIxMGViYjNhZTZmZWI1MGY3NGQ4NTk4ZDU2Y2M4NjYyODIxZiJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 440
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 143
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 190
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 79
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 260
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier5/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sジェノサイドプロセス実行中。敵損害アリ。続行シマス。","with":[{"translate":"【能力：不動・射的・コール・胴体無敵・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:6,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:30,IgnoreBlocks:false}}],Name:"ChangeTurn",Loop:1}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:6},{Name:"ChangeTurn",Set:3,Condition:[{Name:"MinMP",MP:17}]},{Name:"ChangeTurn",Set:5,Condition:[{Name:"MinMP",MP:31},{Name:"RandomChance",Chance:0.2d}]},{Name:"ChangeTurn",Set:3,Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:10,IgnoreBlocks:true}},{Name:"MinMP",MP:17}]}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:[Casting,Charge,Normal]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:4,Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:1b},Rotate:[3f,10f],Skill:[{Interval:{Min:40,Max:40,Current:40},Call:[{}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:40,Current:40},Call:[{Name:"Function",Tags:[Global,Event,Function,AttackSound,FiringLaser]},{Name:"Laser",Loop:40,Laser:"SecurityLaser",Type:"Dual"}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}],MP:17}]},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:[Casting,Cast,Normal]}]},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,SecurityPoleDual,Child],Level:1}]],IsChild:true,Settings:[{Name:"Direction",Target:{Look:"Self"},DirectionRange:[0f,360f],Absolute:{Horizontal:true},Speed:2d,SpeedRange:2d}]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}],MP:31}]},{Index:6,Target:{Look:"Fixed",Rotation:"RightDown"},Rotate:[0f,3f],Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,SecurityPole,RunoutEnergy]}]},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
