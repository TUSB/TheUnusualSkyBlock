### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"不浄の髑髏","color":"#FF0000","bold":true}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b}],IsBaby:1b,NoGravity:1b,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"不浄の髑髏",Id:[I;1,0,27,0],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNhN2IxNmIwMzM4MmRhZDU5NWE1NDAxNzBjZTQ4MDgwNTA0ODg5MmQxYjI5MDhjZTVmYjljZTE0MWQxYzJiYSJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sに取り憑かれてしまい、発狂してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s穢れをその身に溜め込んだことで意志を持ったドクロ。","with":[{"translate":"【能力：射的・追撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ImpureSkull,Motion]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:120,Max:200,Current:150},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ImpureSkull,DoomSummon1]},{Name:"ChangeTurn",Loop:2}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ImpureSkull,BeamPre]},{Name:"ChangeAI",Tick:[]}]},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Casting","DoomCast"]}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:2,Current:2},Call:[{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:0.5d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,ImpureSkull,Soul],Level:33}],[{Tags:[Skylands,Sky,Shoot,ImpureSkull,SoulDirection],Level:1}]]}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ImpureSkull,BeamFinish]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ImpureSkull,Motion]}]},{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:0.5d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,ImpureSkull,Soul],Level:33}],[{Tags:[Skylands,Sky,Shoot,ImpureSkull,SoulDirection],Level:1}]]},{Name:"ChangeTurn",Loop:1}]}]}]}
