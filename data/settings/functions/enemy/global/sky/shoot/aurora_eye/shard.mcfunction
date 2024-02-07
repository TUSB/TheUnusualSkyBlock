### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",CustomName:'{"translate":"オーロラシャード","color":"#FF0000","bold":true}',Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって空の塵となった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithRotation]}],Attack:[{Name:"Function",Tags:[Global,Sky,Shoot,AuroraEye,ShardAttack1]}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,AuroraEye,ShardTick1]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Enemy","AuroraEye","Shard"]},{Name:"Function",Tags:[Global,Sky,Shoot,AuroraEye,ShardTag]}],Once:1},{Interval:{Min:70,Max:70,Current:70},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}],Once:1}]}]}
