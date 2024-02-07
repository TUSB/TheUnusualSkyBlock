### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:bat",CustomName:'{"translate":"シャーベットサーヴァント","color":"#FF0000","bold":true}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b}],PortalCooldown:400,Tags:[DelayedData,HasAI,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sに凍らされてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:160,Current:80},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,SherbetEye,ServantShot],Level:45}]]}]}]}]}
#Function
playsound entity.evoker.cast_spell hostile @a[distance=..32] ~ ~ ~ 1 0 0
