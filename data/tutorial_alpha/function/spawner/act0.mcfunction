#> tutorial_alpha:spawner/act0

tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スポナー"}]},"\n",{"translate":"この世界のスポナーにはHP(耐久値)がある。\nツール※で破壊する毎にHPが減っていき、0にすると破壊できる。\nスポナーを破壊すると、基本的に職業の経験値を取得できる。\nまた、一部のスポナーは他のブロックに擬態している。\n掘れるツールは変わらず、エンチャントのような光を放っている。\n\n※ピッケル・斧・シャベル・クワのこと。\n材質毎にスポナーのHPを削る値は異なる。\nダブルブレイクのエンチャントが付与されていれば、\n一定の確率で2倍のHPを減らすことができる。"},"\n\n",{"translate":"%1$s  %2$s  %3$s  %4$s  %5$s  %6$s","color":"white","with": [{"translate":"木：0","color":"#FFE2C0"},{"translate":"石：1","color":"dark_gray"},{"translate":"鉄：2","color":"gray"},{"translate":"金：3","color":"gold"},{"translate":"ダイヤ：4","color":"aqua"},{"translate":"ネザライト：6","color":"light_purple"}]},"\n\n",{"translate":"周囲に敵が多すぎると、スポナーの破壊を妨害される。"}]

kill @e[tag=Spawner,distance=..2]
setblock ~ ~ ~-1 air

execute store result score _ _ run function calc:random
scoreboard players set _ Calc 3
scoreboard players operation _ _ %= _ Calc

execute if score _ _ matches 0 align xyz positioned ~0.5 ~1.5 ~-0.5 run summon minecraft:item_display ~ ~-1 ~ {Tags:[Spawner,SpawnerHolder,Tutorial.Spawner],glow_color_override:-1,shadow_radius:0.0f,billboard:"fixed",shadow_strength:1.0f,width:0.0f,height: 0.0f,item_display:"none",view_range:1.0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f]},item:{id:"lodestone",count:1,"components":{"minecraft:custom_data":{Spawner:{},Experience:0,Count:30}}}}
execute if score _ _ matches 1 align xyz positioned ~0.5 ~1.5 ~-0.5 run summon minecraft:item_display ~ ~-1 ~ {Tags:[Spawner,SpawnerHolder,Tutorial.Spawner],glow_color_override:-1,shadow_radius:0.0f,billboard:"fixed",shadow_strength:1.0f,width:0.0f,height: 0.0f,item_display:"none",view_range:1.0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f]},item:{id:"obsidian",count:1,"components":{"minecraft:custom_data":{Spawner:{},Experience:0,Count:30},enchantment_glint_override:true}}}
execute if score _ _ matches 2 align xyz positioned ~0.5 ~1.5 ~-0.5 run summon minecraft:item_display ~ ~-1 ~ {Tags:[Spawner,SpawnerHolder,Tutorial.Spawner],glow_color_override:-1,shadow_radius:0.0f,billboard:"fixed",shadow_strength:1.0f,width:0.0f,height: 0.0f,item_display:"none",view_range:1.0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f]},item:{id:"oak_log",count:1,"components":{"minecraft:custom_data":{Spawner:{},Experience:0,Count:30},enchantment_glint_override:true}}}

function tutorial_alpha:spawner/item

function makeup:tutorial_alpha/sound
