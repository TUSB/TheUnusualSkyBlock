### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"dust 1.000 0.000 5.000 5",Radius:1f,Duration:20,Tags:[DelayedData,HasAI,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sはルナティックアイから落ちる%2$sによって狂ってしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{Damage:25d},Distance:{Min:0.1d,Max:1.5d}},{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:1.5d,IgnoreBlocks:true}}],Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
