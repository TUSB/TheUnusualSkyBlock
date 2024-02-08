### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"フレイムジェイル","color":"#FFFFFF","bold":true}',NoGravity:1b,PortalCooldown:1000,Tags:[DelayedData,HasAI,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:netherrack",Count:1b}}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sに拘束される前にこんがりと焼けてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Desert,Ground,Shoot,FireMage,FlameJailAimAppearance]}]}]}]}
