### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"フレイムレイン","color":"#FFFFFF","bold":true}',NoGravity:1b,PortalCooldown:100,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:magma_block",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは跳ね返った%2$sに焼き肉にされてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-360f,-360f],DirectionRange:[180f,720f],Speed:0.05d,SpeedRange:0.04d}],Attack:[{Condition:[{Name:"RandomChance",Chance:0.65d}],Name:"Function",Tags:[Desert,Ground,Shoot,FireMage,Flame]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Step",Speed:0.2d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]}]}]}]}
