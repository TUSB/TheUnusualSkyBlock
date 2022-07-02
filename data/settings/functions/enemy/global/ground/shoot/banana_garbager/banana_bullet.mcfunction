### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"バナナの皮","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:200,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:81}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value 'CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"ナイトメアアイ","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],NoGravity:true'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.8d}],Attack:[{Name:"Damage",Player:{},MP:{MP:50,Percent:true},Distance:{Max:2d},AEC:{Particle:"dust",Color:16766255,Duration:10,Radius:1f,Effects:[{Id:1b,Amplifier:100b,Duration:5,ShowParticles:false}]}}]}
