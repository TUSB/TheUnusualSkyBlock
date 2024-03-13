### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skeleton",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired,HasLootTable,AnalyseLog,"CarrierOwner"],CustomName:'{"translate":"コンバットサモナー","color":"#FF0000","bold":true}',NoGravity:1b,Silent:1b,ActiveEffects:[{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:4}},{}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11382189},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"[\"召喚士\"]"},SkullOwner:{Name:"召喚士",Id:[I;0,0,0,6],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NTk0MzUzMzU1NTIsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9mYWY1NTA1OWI3NzkzMzc4YTdkM2E1YWVmNzllZjBlZGY0YzE0OGMzODBhMTk3MjYwMjNhNTQ1MjQxZjc2OTIifX19"}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s大量の敵を召喚することのできる召喚士。ガストを操って、相手をつけ狙う。","with":[{"translate":"【能力：召喚】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Condition:[{Name:"Function",Tags:[Skylands,Sky,Summon,CombatSummoner,Tick]}],Name:"ChangeTurn",Set:2}],Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:105,Current:80},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]},{Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:3d,SpeedRange:3d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Sky,Summon,CombatSummoner,SummonCombat1]},{Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:3d,SpeedRange:3d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Sky,Summon,CombatSummoner,SummonCombat1]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Sky,Summon,CombatSummoner,SlowFall]}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Name:"Damage",Player:{DamageType:[Global,Blast],DeathCause:'[{"translate":"%2$sは爆散した！ そして不幸にも%1$sはその爆発に巻き込まれてしまった！","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:100},Distance:{Max:5d}},{Name:"Kill"}]}]}]}
#Function
# 出現時半径128m以内にいるトラップグループのMOB5体までに近い順で削除除外タグを付与
tag @e[tag=CarrierOwner,tag=!Garbage,distance=..128,sort=nearest,limit=4] add IgnoreGarbage
# 削除除外されなかった遠いMOBは削除
tag @e[tag=CarrierOwner,tag=!Garbage,tag=!IgnoreGarbage,distance=..128] add Garbage
# 除外タグを片付け
tag @e[tag=IgnoreGarbage,distance=..128] remove IgnoreGarbage
