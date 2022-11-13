### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの怨念の波動に耐えられなかった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{DeathCause:'[{"translate":"%1$sは%2$sの怨念の波動に耐えられなかった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName"}]}]'},Explosion:2},{Name:"Function",Tags:[Global,Sky,Shoot,LostSoulRed,ExplosionDirection]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
