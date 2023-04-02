### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"アオリイカの墨","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:100,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:90,Explosion:{Type:0b,Colors:[I;4209480]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって目の前が真っ暗になった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.15d}],Attack:[{Name:"Damage",Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sによって目の前が真っ暗になった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:5,Percent:true},AEC:{Particle:"squid_ink",Duration:80,Radius:2f,Effects:[{Id:14,Amplifier:9b,Duration:5,ShowParticles:false}]}}]}
