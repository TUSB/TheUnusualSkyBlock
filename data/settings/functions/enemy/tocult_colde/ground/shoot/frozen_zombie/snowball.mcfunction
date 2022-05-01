### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Tags:[DelayedData,CallOnInit,CallOnAttack,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:16}}],Name:"Step",Direction:[-10f,-40f],DirectionRange:[20f,20f],Speed:0.6d}],Attack:[{Name:"Damage",Player:{Damage:0},AEC:{Effects:[{Id:2b,Amplifier:1b,Duration:80}]}}]}
