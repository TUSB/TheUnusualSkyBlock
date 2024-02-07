### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ヘルズフレイムショット","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:60,Tags:[DelayedData,CallOnInit,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1,Explosion:{Type:0b,Colors:[I;16777215]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの炎弾によってその身を愉快なトーチへと変貌を遂げた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Step",Direction:[-3f,-3f],DirectionRange:[6f,6f],Speed:0.8d}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
