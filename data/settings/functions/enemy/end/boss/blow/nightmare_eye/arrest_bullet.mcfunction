### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Tags:[DelayedData,CallOnInit,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32,IgnoreBlocks:true}}],Name:"SmartMotion",TP:1b,Speed:{Set:50},Gravity:{Set:70}}]}
