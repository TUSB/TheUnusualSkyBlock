### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"青紫キノコの胞子","color":"#FF0000","bold":true}',NoGravity:true,PortalCooldown:60,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:spider_eye",Count:1b,tag:{CustomModelData:11}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%2$sによって%1$sはキノコと化した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.2d}],Attack:[{Name:"Damage",Player:{},MP:{MP:50,Percent:true},Distance:{Max:2d},AEC:{Particle:"dust",Color:16766255,Duration:10,Radius:1f,Effects:[{Id:1,Amplifier:100b,Duration:5,ShowParticles:false}]}},{Name:"Function",Tags:[Global,Ground,Shoot,BananaGarbager,BananaSound]}]}
