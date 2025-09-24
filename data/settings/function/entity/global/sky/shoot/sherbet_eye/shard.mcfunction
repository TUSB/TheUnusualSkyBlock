### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",CustomName:'{"translate":"シャーベットシャード","color":"#FF0000","bold":true}',Tags:[DelayedData,HasAI,CallOnAttack,CallOnTick,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"function",Tags:[Global,Sky,Shoot,SherbetEye,ShardAttack]}],Tick:[{Name:"function",Tags:[Global,Sky,Shoot,SherbetEye,ShardTick]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"delay_action",Tags:["Enemy","AuroraEye","Shard"]},{Name:"function",Tags:[Global,Sky,Shoot,AuroraEye,ShardTag]}],Once:1},{Interval:{Min:70,Max:70,Current:70},Loop:{Max:1,Current:1},Call:[{Name:"kill"}],Once:1}]}]}
