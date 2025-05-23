### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"怒れる金りんご弾","color":"#FF0000","bold":true}',NoGravity:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"enchanted_golden_apple",count:1}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1d}],Attack:[{Name:"Damage",Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sの汁が眼に入り錯乱と激痛を伴って自然の脅威を思い知ることとなった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:1d},AEC:{Particle:{type:"dust",color:[1.0,0.0044843049327354,0.4],scale:1},Duration:10,Radius:0.5f,potion_contents:{custom_effects:[{id:"minecraft:invisibility",amplifier:6b,duration:5,show_particles:false}]}}}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
