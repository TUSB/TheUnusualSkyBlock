### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ホウン","color":"#FFFFFF","bold":true}',NoGravity:1b,PortalCooldown:200,Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":126,"minecraft:firework_explosion":{shape:"small_ball"}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",TP:true,Start:true,Speed:{Set:30d},Gravity:{Set:0d}},{Name:"Function",Tags:[Global,Ground,Shoot,CommonParticle,Cannon]}]}
#Function
playsound entity.generic.explode hostile @a ~ ~ ~ 0.75 2 0
