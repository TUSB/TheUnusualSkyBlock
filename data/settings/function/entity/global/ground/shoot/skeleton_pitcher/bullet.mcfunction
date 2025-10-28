### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"スケルトンピッチャーの骨弾","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":129,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;16777215]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"step",Speed:0.5d}]}
