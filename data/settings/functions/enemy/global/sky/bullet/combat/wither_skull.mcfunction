### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skull",PortalCooldown:60,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"健康的なウィザースケルトンです。黒くなったのは火焼けのおかげ。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.06d,Settings:[{Name:"Facing",Anchor:Eyes,Target:{Look:"Friendly",Radius:32,IgnoreBlocks:1b}}]}],Attack:[{Name:"Damage",Player:{DamageType:[Global,Projectile]},Distance:{Max:0d}}]}
