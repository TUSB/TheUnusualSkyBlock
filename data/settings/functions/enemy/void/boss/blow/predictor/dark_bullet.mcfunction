### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:85,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true,PortalCooldown:240,Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-15f,-15f],DirectionRange:[30f,30f],Speed:0.1d,Target:{Look:"player",Radius:64d,IgnoreBlocks:true}}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:50,Max:50,Current:50},Loop:{Max:3,Current:3},Call:[{Name:"Step",Direction:[-2f,-2f],DirectionRange:[4f,4f],Speed:0.35d,Target:{Look:"player",Radius:64d,IgnoreBlocks:true}}],Once:3}]}]}
#Function
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 5 0.8
