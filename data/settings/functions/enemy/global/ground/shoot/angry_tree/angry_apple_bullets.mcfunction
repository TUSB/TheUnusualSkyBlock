### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,Unknown],CustomName:'{"translate":"怒れるりんご弾","color":"#FF0000","bold":true}',NoGravity:true,PortalCooldown:120}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"apple",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは球速70km/hの%2$sが運悪く頭に当たり32箇所の頭蓋骨陥没によってその短い生涯を終えた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.7d}],Attack:[{Name:"Damage",Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sは球速70km/hの%2$sが運悪く頭に当たり32箇所の頭蓋骨陥没によってその短い生涯を終えた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},AEC:{Effects:[{Id:14,Amplifier:9b,Duration:5,ShowParticles:false}]}}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
