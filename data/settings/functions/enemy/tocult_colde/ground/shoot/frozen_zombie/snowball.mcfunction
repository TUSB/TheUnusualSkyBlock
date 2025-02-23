### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"フローズンゾンビの雪玉","color":"#FFFFF","bold":true}',PortalCooldown:100,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sに詰められた石が頭部に直撃し頭蓋骨陥没によりその短い生涯を終えた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"「意思」入ってまーす！"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:16d}}],Name:"Step",Direction:[-10f,-40f],DirectionRange:[20f,20f],Speed:0.6d}],Attack:[{Name:"Damage",Player:{Damage:0d,DeathCause:'[{"translate":"%1$sは%2$sに詰められていた石が頭部に直撃し頭蓋骨陥没によりその短い生涯を終えた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},AEC:{effects:[{id:"minecraft:slowness",amplifier:1b,duration:80}]}}]}
