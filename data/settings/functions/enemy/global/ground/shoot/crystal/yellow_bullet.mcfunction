### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:1b,PortalCooldown:80,Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:10063}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの眩い輝きによって浄化された。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.6d}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:5,Max:15,Current:5},Call:[{Name:"Function",Tags:[Global,Event,Function,MotionToRotation]},{Settings:[{Name:"Rotation",Target:{Look:"Self"}}],Name:"Step",Direction:[-60f,-15f],DirectionRange:[120f,30f],Speed:0.6d}]}]}]}
