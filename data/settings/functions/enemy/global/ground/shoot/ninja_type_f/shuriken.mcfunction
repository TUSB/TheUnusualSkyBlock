### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:122,Explosion:{Type:0,Colors:[I;16731960]}}},NoGravity:true,Tags:[DelayedData,CallOnInit,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.8d}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 5 0.8 0
