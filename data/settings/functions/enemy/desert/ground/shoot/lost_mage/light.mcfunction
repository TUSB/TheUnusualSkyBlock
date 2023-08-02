### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ロストメイジの光魔法","color":"#FFFFFF"}',Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:120,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnBlock,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$によって分子化してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64,IgnoreBlocks:true}}],Name:"SmartMotion",TP:1b,Speed:{Set:100},Gravity:{Set:10}}],Attack:[{Condition:[{Name:"RandomChance",Chance:0.5d}],Name:"Function",Tags:[Desert,Ground,Shoot,LostMage,LightConfusion]}],Block:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.8d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Desert,Ground,Shoot,LostMage,SmallLight],Level:1}],[{Tags:[Desert,Ground,Shoot,LostMage,SmallLightDirection],Level:1}]]},{Name:"Function",Tags:[Desert,Ground,Shoot,LostMage,LightOnBlockDirection]}]}
