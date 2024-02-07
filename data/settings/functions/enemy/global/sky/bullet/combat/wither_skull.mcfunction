### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skull",CustomName:'{"translate":"コンバットウィザースケルトン"}',PortalCooldown:60,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「あいったー！」%1$s見事に顔面にドクロの弾が当たったのでやはり家に帰ることにした。","with":[{"selector":"@s"}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s最後のあがきー！"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.06d,Settings:[{Name:"Facing",Anchor:Eyes,Target:{Look:"Friendly",Radius:32,IgnoreBlocks:1b}}]}],Attack:[{Name:"Damage",Player:{DamageType:[Global,Projectile],DeathCause:'[{"translate":"%1$sは%2$sの最後の魔法で殺された。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:0d}}]}
