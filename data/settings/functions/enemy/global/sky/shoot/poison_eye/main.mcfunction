### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"ポイゾンアイ","color":"#FF0000","bold":true}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b}],IsBaby:1b,NoGravity:1b,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,2,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQzNzI1NzgsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9iMjllOTU5OWU4MzA0ZDM2MWQxN2UyODMxYjBmZDQzYjA3NDFjYjVkN2ZiNmRiNTcwNTM1ODdjZDI5ZTI5In19fQ=="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sに呪われてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sへいっ！新鮮な毒おまちっ！","with":[{"translate":"【能力：格闘・移動・射的・追撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"RandomChance",Chance:0.5d}],Name:"Function",Tags:[Global,Sky,Shoot,PoisonEye,Effect]}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,PoisonEye,Tick]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:200,Max:400,Current:200},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}}],Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:2d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,PoisonEye,Smog],Level:1}]]}]}]}]}
