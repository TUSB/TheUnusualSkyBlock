### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:1b,PortalCooldown:600,Tags:[DelayedData,HasAI,CallOnInit,CallOnTimeOut,CooldownRequired,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:2001,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:32d}}],Name:"Step",Direction:[0f,-60f],Speed:0.4d,SpeedRange:0.1d}],Time:[{Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Once:1,Skill:[{Interval:{Min:1,Max:1,Current:30},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:32d}}],Name:"Step",Speed:0.4d,SpeedRange:0.1d}],Once:30}]}]}
#Function
playsound entity.shulker.shoot neutral @a[distance=..20] ~ ~ ~ 0.7 2.0 0
