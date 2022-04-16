### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:129,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true,Tags:[DelayedData,CallOnInit,CallOnAttack]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:16}}],Name:"Step",Direction:[-10f,-40f],DirectionRange:[20f,20f],Speed:0.6d}],Attack:[{Name:"Damage",Player:{}}]}
