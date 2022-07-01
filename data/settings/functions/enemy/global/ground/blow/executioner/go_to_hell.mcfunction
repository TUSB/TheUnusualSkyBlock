### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:potion",CustomName:'{"translate":"ゴートゥーヘル","color":"#FF0000","bold":true}'}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:16711680,CustomPotionEffects:[{Id:1b,Amplifier:10b,Duration:100},{Id:7b,Amplifier:4b,Duration:20}]}}}
#Function
particle ambient_entity_effect ~ ~ ~ 0.8 0.1 0.8 1 32 force @a[tag=ShowParticles]
