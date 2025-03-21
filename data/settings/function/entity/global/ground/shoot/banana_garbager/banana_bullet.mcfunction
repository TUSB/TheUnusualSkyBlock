### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"バナナの皮","color":"#FFFFFF","bold":true}',NoGravity:true,PortalCooldown:200,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":81}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.8d}],Attack:[{Name:"Damage",Player:{},MP:{MP:50,Percent:true},Distance:{Max:2d},AEC:{Particle:{type:"dust",color:[1.0,0.8352941176470588,0.1843137254901961],scale:1},Duration:10,Radius:1f,potion_contents:{custom_effects:[{id:"minecraft:speed",amplifier:100b,duration:5,show_particles:false}]}}},{Name:"Function",Tags:[Global,Ground,Shoot,BananaGarbager,BananaSound]}]}
