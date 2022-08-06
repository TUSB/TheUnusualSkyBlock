### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker_bullet",CustomName:'{"translate":"後光","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:80,Tags:[DelayedData,CallOnInit,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって未知の手段で死亡した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.8d}]}
