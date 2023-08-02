### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,CustomName:'{"translate":"アイスボール","color":"#FFFFFF","bold":true}',Invisible:1b,PortalCooldown:200,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって綺麗な氷の彫刻と化した。キレイだね。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Speed:{Set:60d,Range:10d},Gravity:{Set:30d}},{Name:"Function",Tags:[TocultColde,Ground,Shoot,IceMage,IceBallSummonDirection]},{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[0f,-90f]}],Name:"Function",Tags:[TocultColde,Ground,Shoot,IceMage,IceBallMagicSquare]}],Attack:[{Condition:[{Name:"RandomChance",Chance:0.65d}],Name:"Function",Tags:[TocultColde,Ground,Shoot,IceMage,Freeze]}],Tick:[{Name:"Function",Tags:[TocultColde,Ground,Shoot,IceMage,IceBallAppearance]}]}
