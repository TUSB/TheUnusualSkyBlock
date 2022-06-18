### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"炎獄滅石 -集-","color":"#FFFFFF"}',Item:{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:82}},NoGravity:true,PortalCooldown:30,Tags:[DelayedData,CallOnInit,TickingRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.8d}]}
