### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"スライミーボール","color":"#FFFFFF"}',PortalCooldown:80,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:slime_ball",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは全身がスライムまみれになって、シャワーに入りたくなってしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[0f,-90f],Absolute:{Vertical:true}}],Name:"Step",Speed:0.15d}],Attack:[{Condition:[{Name:"RandomChance",Chance:0.25d}],Name:"Function",Tags:[Skylands,Ground,Shoot,Slimy,Debuff1]},{Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:true}},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"Step",Speed:0.5d},{Name:"Function",Tags:[Skylands,Ground,Shoot,Slimy,BallSound]}],Once:1}]}]}
