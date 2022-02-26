### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"炎獄滅石 -破-","color":"#FFFFFF"}',Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:10097,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true,PortalCooldown:80,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:0.25d}],Attack:[{Name:"Damage",Player:{DamageType:[Global,Blast]},Mob:{Fire:100,Dark:100},MP:{MP:30,Percent:true},Distance:{Max:3d},AEC:{Effects:[{Id:14b,Amplifier:3b,Duration:200,ShowParticles:false}]}}]}
