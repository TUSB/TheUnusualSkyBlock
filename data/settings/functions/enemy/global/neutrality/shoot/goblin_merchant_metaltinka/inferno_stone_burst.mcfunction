### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"炎獄滅石 -破-","color":"#00FFC2"}',NoGravity:true,PortalCooldown:10,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:10097,Explosion:{Type:0,Colors:[I;16777215]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって未知の手段で死亡した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:0.7d}],Attack:[{Name:"Damage",Player:{DamageType:[Global,Blast]},Mob:{Fire:50,Dark:50},MP:{MP:30,Percent:true},Distance:{Max:1d},AEC:{Effects:[{Id:14b,Amplifier:3b,Duration:200,ShowParticles:false}]}}],ProjectileDamage:{Fire:20,Dark:20}}
