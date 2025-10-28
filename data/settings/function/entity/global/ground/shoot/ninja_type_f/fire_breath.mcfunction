### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"カトン・ブレズ","color":"#FF0000"}',NoGravity:true,PortalCooldown:40,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":1,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;16777215]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"step",Speed:1d}],Attack:[{Name:"damage",Player:{DeathCause:'[{"translate":"%1$sは%2$sの炎によって消し炭となった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:1d},AEC:{effects:[{id:"minecraft:invisibility",amplifier:3b,duration:60,show_particles:false}]}}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 5 0.4 0
