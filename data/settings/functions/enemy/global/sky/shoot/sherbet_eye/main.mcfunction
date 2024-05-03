### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"シャーベットアイ","color":"#FF0000","bold":true}',Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b},{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}],IsBaby:1b,NoGravity:1b,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,5,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ1OTg0MzcsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9iMWZmODg4M2U2MzVmM2E5N2NhODcxMjk0ODgwMWU2ODk1YjI2OTZjMDY1ZWM3YmRkNGY0YmFlZGRmYmEyNDYifX19"}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 75
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sに凍らされてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s最近めっちゃ寒くない？ あっ私の周りだけね。","with":[{"translate":"【能力：格闘・移動・射的・範囲攻撃・追撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Function",Tags:[Global,Sky,Shoot,SherbetEye,Attack1]}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,SherbetEye,Tick]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:200,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[-180f,20f],DirectionRange:[360f,10f],Speed:-5d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Global,Sky,Shoot,AuroraEye,Tp]}]},{Interval:{Min:10,Max:60,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,SherbetEye,Servant],Level:45}],[{Tags:[Global,Sky,Shoot,SherbetEye,ServantDirection],Level:45}]]}]}]}]}
