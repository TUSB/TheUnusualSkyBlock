### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"蜘蛛の巣ショット","color":"#FF0000","bold":true}',NoGravity:true,PortalCooldown:100,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1006}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって糸に絡め取られてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[0f,-30f],DirectionRange:[0f,15f]}],Name:"Step",Speed:0.5d,SpeedRange:0.2d}],Attack:[{Name:"Function",Tags:[Underworld,Ground,Blow,SpiderReinforce,SpiderwebEffect]}]}
#Function
particle minecraft:item cobweb ~ ~ ~ 0.1 1 0.1 0.1 10 force @a
playsound entity.spider.hurt hostile @a[distance=..20] ~ ~ ~ 0.7 2.0
playsound entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.7 2.0 0
