### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",PortalCooldown:300,Tags:[DelayedData,HasAI,CallOnInit,CallOnTimeOut,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:ender_eye",Count:1b}}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sはナイトメアアイの%2$sに悪い夢を見させられた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,0f],DirectionRange:[230f,0f],Speed:0.7d}],Time:[{Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound entity.wither.shoot hostile @a[distance=..64] ~ ~ ~ 0.7 0.5 0
