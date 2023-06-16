### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"焼きたてのクッキー","color":"#FFFFFF","bold":true}',NoGravity:true,PortalCooldown:200,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:cookie",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは不運にもバナナ・ガベージャの投擲した%2$sを踏み時速1,000kmの速度で地面を滑って転倒した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.8d}],Attack:[{Name:"Damage",Player:{},Distance:{Max:2d},AEC:{Effects:[{Id:17b,Amplifier:5b,Duration:-1}]}},{Name:"Function",Tags:[Global,Ground,Shoot,CookieGarbager,CookieParticleAndSound]}]}
