### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"獰猛なワサビの弾","color":"#FF0000","bold":true}',PortalCooldown:80,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:82}}}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ワサビだこれ！」%2$sを食べてしまった%1$sは突っ込まずにはいられなかった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.3d,SpeedRange:1.5d}],Tick:[{Name:"Function",Tags:[Skylands,Ground,Shoot,FierceSalmon,WasabiParticles]}]}
#Function
playsound entity.snowball.throw neutral @a[distance=..32] ~ ~ ~ 0.7 1.2 0
