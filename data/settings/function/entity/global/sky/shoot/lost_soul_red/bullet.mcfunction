### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"迷える魂","color":"#FFFFFF","bold":true}',NoGravity:1b,PortalCooldown:300,Tags:[DelayedData,HasAI,CallOnInit,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":1,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;16777215]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}}],Name:"step",Direction:[-30f,-10f],DirectionRange:[60f,10f],Speed:0.6d}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Global,Sky,Shoot,LostSoulRed,BulletAppearance]}]}]}]}
#Function
playsound item.firecharge.use master @a[distance=..64] ~ ~ ~ 4.0 0.5
