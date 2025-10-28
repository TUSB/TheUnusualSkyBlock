### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"汚泥","color":"#FF0000","bold":true}',PortalCooldown:200,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:spider_eye",count:1,components:{"minecraft:custom_model_data":11}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"step",Speed:0.2d,SpeedRange:0.6d}],Attack:[{Name:"function",Tags:[Underworld,Ground,Shoot,SludgeGarbager,SludgeSound]}]}
