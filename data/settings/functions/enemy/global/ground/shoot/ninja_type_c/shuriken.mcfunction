### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ノロイ・スリケン","color":"#FF0000"}',NoGravity:true,PortalCooldown:80,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:122,Explosion:{Type:0b,Colors:[I;8607398]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの熱鉄よって細炭となった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.8d}],Attack:[{Name:"Damage",Player:{Damage:0d},Distance:{Max:1d},AEC:{Effects:[{Id:14,Amplifier:7b,Duration:80,ShowParticles:false}]}}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 5 0.8 0
