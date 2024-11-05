### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"怒れる金りんご弾","color":"#FF0000","bold":true}',NoGravity:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"enchanted_golden_apple",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの汁が眼に入り錯乱と激痛を伴って自然の脅威を思い知ることとなった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1d}],Attack:[{Name:"Damage",Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sの汁が眼に入り錯乱と激痛を伴って自然の脅威を思い知ることとなった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:1d},AEC:{Particle:"dust",Color:16768870,Duration:10,Radius:0.5f,effects:[{id:"minecraft:invisibility",amplifier:6b,duration:5,show_particles:false}]}}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
