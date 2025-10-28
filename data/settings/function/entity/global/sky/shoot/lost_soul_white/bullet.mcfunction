### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:true,CustomName:'{"translate":"迷える魂","color":"#FFFFFF","bold":true}',PortalCooldown:600,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":4,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;16777215]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"step",Speed:0.6d}],Tick:[{Name:"function",Tags:[Global,Sky,Shoot,LostSoulWhite,BulletAppearance]}]}
