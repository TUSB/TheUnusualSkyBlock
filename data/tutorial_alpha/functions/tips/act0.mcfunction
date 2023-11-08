function tutorial_alpha:tips/reset
schedule function tutorial_alpha:tips/reset 3s

summon minecraft:item_display ~ ~500 ~ {Tags:[Tutorial.TIPS],item:{id:"red_bed",Count:1b},transformation:{translation:[0.25f,0f,0f],left_rotation:{axis:[0f,1f,0f],angle:1.571f},right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]},Passengers:[{id:"item_display",Tags:[Tutorial.TIPS],item:{id:"skeleton_skull",Count:1b},transformation:{translation:[0.25f,0.3f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}]}
execute facing entity @a[distance=..7,limit=1,sort=nearest] feet rotated ~ 0 positioned ~ ~500 ~ as @e[tag=Tutorial.TIPS,distance=..0.01] positioned ~ ~-500 ~ run tp @s ~ ~ ~ ~ ~

tellraw @a[distance=..7] {"translate":"[チュートリアル：TIPS]\n%1$s","bold":true,"with":[{"translate":"死んだり寝たりすると冒険に役立つTIPSが表示される。\n冒険に行き詰まったら一休みしよう。"}]}

function makeup:tutorial_alpha/sound
