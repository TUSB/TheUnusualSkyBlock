### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomNameVisible:true,CustomName:'{"translate":"１","color":"#FF0000","bold":true}',Particle:"block air",Duration:120,Radius:0.001f}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
#Function
playsound entity.ender_eye.death hostile @a[distance=..32] ~ ~ ~ 10 2
