### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"アオリイカの墨","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:100,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":90,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;4209480]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"step",Speed:0.15d}],Attack:[{Name:"damage",Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sによって目の前が真っ暗になった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:5,Percent:true},AEC:{Particle:{type:"squid_ink"},Duration:80,Radius:2f,potion_contents:{custom_effects:[{id:"minecraft:invisibility",amplifier:9b,duration:5,show_particles:false}]}}}]}
