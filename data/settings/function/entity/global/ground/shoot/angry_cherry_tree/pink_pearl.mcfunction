### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"怒れるさくらんぼ","color":"#FF0000","bold":true}',PortalCooldown:300,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,TickingRequired,SmartMotion,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":151,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;16731635]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 175
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 175
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Target:{Look:"Self"}}],Name:"smart_motion",TP:true,Start:true,Speed:{Set:10d},Gravity:{Set:0d}}],Attack:[{Name:"kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:100,Current:100},Call:[{Name:"smart_motion",TP:true,Start:true,KeepRotation:true,Speed:{Add:2d}},{Name:"function",Tags:[Global,Ground,Shoot,AngryCherryTree,PinkPearlParticle]}],Once:1}]}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
