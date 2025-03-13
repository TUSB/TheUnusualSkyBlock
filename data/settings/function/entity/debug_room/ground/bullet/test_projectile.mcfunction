### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker_bullet",Motion:[0.5d,0d,0d],Tags:[DelayedData,DamageProjectile,EnemyProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 5
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {ProjectileDamage:{physical:20,deathcause:'{"text":"test"}'}}
