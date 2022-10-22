### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,CustomName:'{"translate":"ファイアボール","color":"#FFFFFF","bold":true}',PortalCooldown:200,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$によって見る影もない灰と化してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Speed:{Set:50d,Range:50d},Gravity:{Set:75d}}]}
