### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:1b,PortalCooldown:600,Tags:[DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnAttack,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:2001,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,-60f],Speed:0.7d,Target:{Look:"enemy",Radius:24d,IgnoreBlocks:true}}],Time:[{Name:"Kill"}],Attack:[{Name:"Damage",Explosion:2}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:3,Max:3,Current:20},Loop:{Max:5,Current:5},Call:[{Name:"Step",Direction:[0f,0f],DirectionRange:[0f,0f],Speed:0.7d,Target:{Look:"enemy",Radius:64d,IgnoreBlocks:true}}]}]}]}
#Function
playsound entity.shulker.shoot master @a[distance=..20] ~ ~ ~ 1.0 2.0
