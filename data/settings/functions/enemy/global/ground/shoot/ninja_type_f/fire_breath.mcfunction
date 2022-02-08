### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1d}],Attack:[{Name:"Damage",Player:{},Distance:{Max:1d},AEC:{Effects:[{Id:14b,Amplifier:3b,Duration:120,ShowParticles:false}]}}]}
#Function
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 5 0.8
