### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ヘルズコッコのたまご","color":"#FF0000"}',NoGravity:true,PortalCooldown:80,Tags:[DelayedData,CallOnInit,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":132,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;11884375]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"step",Speed:0.8d}]}
#Function
particle flame ~ ~ ~ 0.01 0.01 0.01 0.1 5 normal
playsound entity.item_frame.break hostile @a[distance=..32] ~ ~ ~ 0.7 1.8 0.8
