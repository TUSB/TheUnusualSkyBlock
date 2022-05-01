### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"炎獄滅石 -集-","color":"#FFFFFF"}',Item:{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:82}},NoGravity:true,PortalCooldown:60,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-7f,-12f],DirectionRange:[14f,9f],Speed:0.3d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]}],Attack:[{Name:"Damage",Player:{},Distance:{Max:2d},Explosion:3}]}
