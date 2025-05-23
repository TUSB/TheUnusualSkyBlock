### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"新鮮な赤タマゴ","color":"#FFFFFF"}',Tags:[DelayedData,CallOnInit,CallOnAttack,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":132,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;16751170]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"Step",Speed:1.2d,SpeedRange:0.4d}],Attack:[{Name:"Damage",Player:{Damage:0d,DamageType:[Global]},Distance:{Max:0.1d},AEC:{Particle:{type:"block",block_state:{Name:"air"}},Duration:10,Radius:0.5f,potion_contents:{custom_effects:[{id:"minecraft:hunger",amplifier:1b,duration:200}]}}}]}
