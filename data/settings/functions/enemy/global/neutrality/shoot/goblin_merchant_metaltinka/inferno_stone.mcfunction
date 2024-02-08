### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"炎獄滅石 -集-","color":"#00FF00"}',NoGravity:true,PortalCooldown:30,Tags:[DelayedData,CallOnInit,TickingRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:82}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「セートーボーエ、ダゾ！」%1$sは商業ゴブリン・メタルティンカの投擲した%2$sのによって使い潰されたマッチになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.6d}],ProjectileDamage:{Fire:20,Dark:20}}
