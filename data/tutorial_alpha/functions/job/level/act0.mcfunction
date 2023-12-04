function tutorial_alpha:job/level/reset
schedule function tutorial_alpha:job/level/reset 3s

summon minecraft:item_display ~ ~500 ~ {Tags:[Tutorial.job.Level],item:{id:"nether_star",Count:1b},transformation:{translation:[0.f,1.5f,0f],left_rotation:{axis:[0f,0f,0f],angle:1.571f},right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f]}}
execute facing entity @a[distance=..7,limit=1,sort=nearest] feet rotated ~ 0 positioned ~ ~500 ~ as @e[tag=Tutorial.job.Level,distance=..0.01] positioned ~ ~-500 ~ run tp @s ~ ~ ~ ~ ~

tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"職業の経験値とレベル"}]},"\n",{"translate":"この世界においてネザースターは、職業レベルを上げるための経験値である。\n入手した瞬間に経験値に変換され、1つの職業につき最大でLv50まで上昇させることができる。\nさらにLvを上げることで、CP（キャパシティポイント）を獲得できる。\n最大で50のCPを貯め、CPを消費してステータスを振り分け、自身の強化方向を決めることができる。"}]

function makeup:tutorial_alpha/sound