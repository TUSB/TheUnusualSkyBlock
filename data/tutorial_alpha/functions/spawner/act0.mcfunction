tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スポナー"}]},"\n",{"translate":"この世界のスポナーはHP(耐久値)があり、ピッケル※で破壊する毎にHPが減っていき、0にする事で破壊できる。\nまたスポナーによってはこの時経験値(職業Lvを上げる方)を取得できる。\nまた別ブロックに擬態しているスポナーも存在しているが、\nキラキラと光っているので見つけやすいと思われる。\n\n※ピッケル毎にスポナーのHPを削る値は異なり、\nまたエンチャントのダブルブレイクによって、確率で2倍削ることができることがある。"}]

kill @e[tag=Spawner,distance=..2]
setblock ~ ~ ~-1 air

execute store result score _ _ run function calc:random
scoreboard players set _ Calc 3
scoreboard players operation _ _ %= _ Calc

execute if score _ _ matches 0 align xyz positioned ~0.5 ~1.5 ~-0.5 run summon minecraft:item_display ~ ~-1 ~ {Tags:[Spawner,SpawnerHolder,Tutorial.Spawner],glow_color_override:-1,shadow_radius:0.0f,billboard:"fixed",shadow_strength:1.0f,width:0.0f,height: 0.0f,item_display:"none",view_range:1.0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f]},item:{id:"lodestone",Count:1b,tag:{Spawner:{},Experience:0,Count:30}}}
execute if score _ _ matches 1 align xyz positioned ~0.5 ~1.5 ~-0.5 run summon minecraft:item_display ~ ~-1 ~ {Tags:[Spawner,SpawnerHolder,Tutorial.Spawner],glow_color_override:-1,shadow_radius:0.0f,billboard:"fixed",shadow_strength:1.0f,width:0.0f,height: 0.0f,item_display:"none",view_range:1.0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f]},item:{id:"obsidian",Count:1b,tag:{Enchantments:[{}],Spawner:{},Experience:0,Count:30}}}
execute if score _ _ matches 2 align xyz positioned ~0.5 ~1.5 ~-0.5 run summon minecraft:item_display ~ ~-1 ~ {Tags:[Spawner,SpawnerHolder,Tutorial.Spawner],glow_color_override:-1,shadow_radius:0.0f,billboard:"fixed",shadow_strength:1.0f,width:0.0f,height: 0.0f,item_display:"none",view_range:1.0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f]},item:{id:"oak_log",Count:1b,tag:{Enchantments:[{}],Spawner:{},Experience:0,Count:30}}}

function tutorial_alpha:spawner/item

function makeup:tutorial_alpha/sound