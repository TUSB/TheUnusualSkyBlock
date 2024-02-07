### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"アイスフェアリー","color":"#FFFFFF","bold":true}',NoGravity:1b,PortalCooldown:200,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:ice",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって急速冷凍されてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"Step",Speed:0.4d,SpeedRange:0.1d}],Attack:[{Condition:[{Name:"RandomChance",Chance:0.15d}],Name:"Function",Tags:[TocultColde,Ground,Shoot,IceMage,Freeze]}],Tick:[{Name:"Function",Tags:[TocultColde,Ground,Shoot,IceMage,TurretBulletAppearance]}]}
