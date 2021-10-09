### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Tags:[HasAI],CustomName:'{"translate":"スターダストボムAEC","color":"#FFFFFF"}',Particle:"minecraft:explosion_emitter",Radius:0.5f,Duration:2}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
#演出
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 2 2 1
