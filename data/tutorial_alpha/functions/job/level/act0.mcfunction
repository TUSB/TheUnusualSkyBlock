function tutorial_alpha:job/level/reset
schedule function tutorial_alpha:job/level/reset 3s

summon minecraft:item_display ~ ~500 ~ {Tags:[Tutorial.job.Level],item:{id:"nether_star",Count:1b},transformation:{translation:[0.f,1.5f,0f],left_rotation:{axis:[0f,0f,0f],angle:1.571f},right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f]}}
execute facing entity @s feet rotated ~ 0 positioned ~ ~500 ~ as @e[tag=Tutorial.job.Level,distance=..0.01] positioned ~ ~-500 ~ run tp @s ~ ~ ~ ~ ~

tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"職業の経験値とレベル"}]},"\n",{"translate":"この世界におけるネザースターは、職業レベルを上げるための経験値です。\n入手した瞬間に経験値に変換され、Lvは職業ごとに50まで上げられます。\nさらにLvを上げることで、CP(キャパシティポイント)を最大50獲得できます。\nCPを消費することで自身のステータスを強化することができます。"}]

function makeup:tutorial_alpha/sound