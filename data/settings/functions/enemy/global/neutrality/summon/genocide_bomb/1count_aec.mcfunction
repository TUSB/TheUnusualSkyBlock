### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomNameVisible:true,CustomName:'[{"translate":"|","color":"#FF5555","bold":"true","obfuscated":"true"},{"translate":"|","color":"#FFAA00"},{"translate":"|","color":"#FFFF55"},{"translate":"|","color":"#55FF55"},{"translate":"|","color":"#00AAAA"},{"translate":"|","color":"#55FFFF"},{"translate":"|","color":"#5555FF"},{"translate":"|","color":"#FF55FF"},{"translate":"-=< ","color":"#FFFFFF","bold":"true","obfuscated":"false"},{"translate":"１","color":"#FF5555","bold":"true","obfuscated":"false"},{"translate":" >=-","color":"#FFFFFF","bold":"true","obfuscated":"false"},{"translate":"|","color":"#FF55FF"},{"translate":"|","color":"#5555FF"},{"translate":"|","color":"#55FFFF"},{"translate":"|","color":"#00AAAA"},{"translate":"|","color":"#55FF55"},{"translate":"|","color":"#FFFF55"},{"translate":"|","color":"#FFAA00"},{"translate":"|","color":"#FF5555"}]',Particle:"entity_effect",Color:16720384,Duration:20,Radius:0.3f}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
#Function
playsound entity.ender_eye.death master @a[distance=..32] ~ ~ ~ 10 2
