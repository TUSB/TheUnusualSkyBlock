### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:potion",CustomName:'{"translate":"禁忌・冥界落とし","color":"#007D49","bold":true}',Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:32073,CustomPotionEffects:[{Id:2b,Amplifier:3b,Duration:600},{Id:20b,Amplifier:3b,Duration:600}]}},PortalCooldown:100,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-7f,-7f],DirectionRange:[14f,14f]}],Name:"Step",Speed:2d}],Attack:[{Name:"Damage",Mob:{Fire:100,Ice:100,Dark:100},Distance:{Min:0.1d,Max:3d}}],ProjectileDamage:{Fire:10,Ice:10,Dark:10}}
