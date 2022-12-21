### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:true,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:ice",Count:1b}}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの怨念によって骨の髄から凍ってしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:0.05d,SpeedRange:0.04d}],Attack:[{Name:"Function",Tags:[TocultColde,Sky,Shoot,NightmareEye,SherbetSoulBulletDebuff]}],Tick:[{Name:"Function",Tags:[TocultColde,Sky,Shoot,NightmareEye,SherbetSoulBulletAppearance]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:59},Call:[{Name:"Step",Speed:0.5d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]}],Once:1}]}]}
#Function
playsound block.amethyst_cluster.step hostile @a[distance=..64] ~ ~ ~ 0.1 2.0 0
playsound entity.item.pickup hostile @a[distance=..64] ~ ~ ~ 0.7 2.0 0
