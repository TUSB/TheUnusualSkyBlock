### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item",CustomName:'{"translate":"通りすがりの金リンゴ","color":"#FF0000","bold":true}',PortalCooldown:70,Tags:[DelayedData,CallOnInit,CallOnTimeOut,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"enchanted_golden_apple",Count:1b}}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの誘惑に勝てず己が全てを捧げ自然へと還った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[-180f,-5f],DirectionRange:[360f,0f],Speed:1.1d,SpeedRange:1.55d,Absolute:{Vertical:true}}],Time:[{Name:"Damage",Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sの誘惑に勝てず己が全てを捧げ自然へと還った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Physical:100},Distance:{Max:4d},Explosion:-1}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
