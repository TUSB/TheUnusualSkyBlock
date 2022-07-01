### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"予測者の闇弾","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',NoGravity:true,PortalCooldown:240,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:85,Explosion:{Type:0,Colors:[I;16777215]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによってダルマになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Step",Direction:[-15f,-15f],DirectionRange:[30f,30f],Speed:0.1d}],Attack:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,DarkExplosion,Aec],Level:1}]]},{Name:"Damage",Player:{DamageType:[Global,Blast],DeathCause:'[{"translate":"%1$sは%2$sによってダルマになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:4d},AEC:{Effects:[{Id:14b,Amplifier:7b,Duration:5,ShowParticles:false}]}}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:50,Max:50,Current:50},Loop:{Max:3,Current:3},Call:[{Name:"Step",Direction:[-2f,-2f],DirectionRange:[4f,4f],Speed:0.35d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]}],Once:3}]}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
