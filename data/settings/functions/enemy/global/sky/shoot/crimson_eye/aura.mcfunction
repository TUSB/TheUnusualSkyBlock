### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Tags:[DelayedData,CallOnInit,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:redstone_block",Count:1b}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,-90f],DirectionRange:[230f,-90f],Speed:0.65d}]}
#Function
playsound entity.wither.shoot hostile @a[distance=..40] ~ ~ ~ 0.7 0.5 0