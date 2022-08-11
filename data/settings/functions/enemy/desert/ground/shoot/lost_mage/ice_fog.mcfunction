### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:60,Tags:[DelayedData,HasAI,CallOnTimeOut,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sを吸って肝が冷えてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],Passenger:{Type:"up",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}}],Name:"Damage",Player:{DamageType:[Global]},Distance:{Min:0.1d,Max:1d}},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.25d}],Name:"Function",Tags:[Desert,Ground,Shoot,LostMage,IceFreeze]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
