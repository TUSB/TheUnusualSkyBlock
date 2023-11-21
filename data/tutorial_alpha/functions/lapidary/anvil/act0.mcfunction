tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"変異した金床"}]},"\n",{"translate":"魔石の影響により、金床の機能が使えなくなった。\n代わりに、魔石を合成し上位ランクの魔石1個に合成することができる。\n同ランクの魔石を3～4個並べると、上位の魔石１つが出来上がる。\n近くに金床があるので使ってみると良い。"}]

execute as @a[distance=..7] at @s run function tutorial_alpha:lapidary/anvil/item

function makeup:tutorial_alpha/sound