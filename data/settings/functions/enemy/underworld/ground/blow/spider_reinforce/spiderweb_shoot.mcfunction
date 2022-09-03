### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"蜘蛛の巣ショット","color":"#FF0000","bold":true}',NoGravity:true,PortalCooldown:100,Tags:[DelayedData,CallOnInit,CallOnTimeOut,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1006}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって糸に絡め取られてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"Step",Speed:0.3d,SpeedRange:0.2d}],Time:[{Name:"Kill"}],Attack:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:1.0d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:0.2d}],Name:"Spawn",SpawnEntities:[[{Tags:[Underworld,Ground,Blow,SpiderReinforce,SpiderwebEffect],Level:1}]]}]}
#Function
particle minecraft:item cobweb ~ ~ ~ 0.1 1 0.1 0.1 10 force @a[tag=ShowParticles]
playsound entity.spider.hurt hostile @a[distance=..20] ~ ~ ~ 0.7 2.0
playsound entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.7 2.0 0
