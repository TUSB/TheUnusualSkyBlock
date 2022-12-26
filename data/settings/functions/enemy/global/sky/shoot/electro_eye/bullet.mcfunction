### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"エレキボール","color":"#FF0000","bold":true}',Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:300,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnBlock,CallOnTick,CooldownRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾋﾞﾘﾘｯ」%1$sは%2$sにうっかり触れてしまい、感電してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:0d},Gravity:{Set:0d}},{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,BulletFireSound]}],Attack:[{Name:"ChangeTurn",Set:2}],Block:[{Name:"ChangeTurn",Set:2}],Tick:[{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:0.5d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[-180f,-90f],DirectionRange:[360f,180f]}],Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,BulletDirection]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:50d}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:0d}}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,BulletExplosionSound]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,ElectroEye,BulletExplosionAec],Level:45}]]},{Name:"Damage",Player:{DamageType:[Global],EPF:10,DeathCause:'[{"translate":"「ﾋﾞﾘﾘｯ」%1$sは%2$sにうっかり触れてしまい、感電してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:5,Percent:true},Distance:{Max:2d}},{Condition:[{Name:"RandomChance",Chance:0.2d}],Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Palsy]},{Name:"Kill"}]}]}]}